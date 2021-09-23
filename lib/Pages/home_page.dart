import 'dart:convert';

import 'package:chopper/chopper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:try_chopper/Pages/single_post_page.dart';
import 'package:try_chopper/data/post_api_service.dart';
import 'package:try_chopper/model/built_post.dart';
import 'package:built_collection/built_collection.dart';
import 'package:try_chopper/model/built_user_data.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Chopper :)',
        ),
      ),
      body: _buildBody(context: context),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          BuiltUserData userData = BuiltUserData((b) => b
            ..userId = 1
            ..userName = 'ahmed'
            ..userPhone = '01281810921'
            ..userMail = 'azzab@gmail.com');

          // final response = await Provider.of<PostApiService>(context)
          //     .postPost(BuiltPost((b)=> b..title = "new title"..body = 'new body'));
          print("Response => ${userData.toJson().toString()}");
          print("Response => ${BuiltUserData.fromJson(userData.toJson())}");
        },
      ),
    );
  }

  FutureBuilder<Response> _buildBody({required BuildContext context}) {
    return FutureBuilder<Response<BuiltList<BuiltPost>>>(
        future: Provider.of<PostApiService>(context).getPosts(),
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return Center(
              child: Text(
                snapshot.error.toString(),
                textAlign: TextAlign.center,
                textScaleFactor: 1.3,
              ),
            );
          } else if (snapshot.connectionState == ConnectionState.done) {
            // final List posts = jsonDecode(snapshot.data!.bodyString);
            final posts = snapshot.data?.body;
            return _buildPosts(context: context, posts: posts);
          } else {
            return Center(child: CupertinoActivityIndicator());
          }
        });
  }

  ListView _buildPosts(
      {required BuildContext context, required BuiltList<BuiltPost>? posts}) {
    return ListView.builder(
        padding: EdgeInsets.all(8),
        itemCount: posts?.length,
        itemBuilder: (contxet, index) {
          return Card(
            elevation: 0,
            child: ListTile(
              title: Text(
                "${posts?[index].title}",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text("${posts?[index].body}"),
              onTap: () =>
                  _navigateToPost(context: context, id: posts?[index].id),
            ),
          );
        });
  }

  void _navigateToPost({required BuildContext context, required int? id}) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => SinglePostPage(postId: id),
      ),
    );
  }
}
