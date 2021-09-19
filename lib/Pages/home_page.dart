import 'dart:convert';

import 'package:chopper/chopper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:try_chopper/Pages/single_post_page.dart';
import 'package:try_chopper/data/post_api_service.dart';

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
        onPressed: () async {
          final response = await Provider.of<PostApiService>(context)
              .postPost({'key': 'value'});
          print("Response => ${response.body}");
        },
      ),
    );
  }

  FutureBuilder<Response> _buildBody({required BuildContext context}) {
    return FutureBuilder<Response>(
        future: Provider.of<PostApiService>(context).getPosts(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            final List posts = jsonDecode(snapshot.data!.bodyString);
            return _buildPosts(context: context, posts: posts);
          } else {
            return Center(child: CupertinoActivityIndicator());
          }
        });
  }

  ListView _buildPosts({required BuildContext context, required List posts}) {
    return ListView.builder(
        padding: EdgeInsets.all(8),
        itemCount: posts.length,
        itemBuilder: (contxet, index) {
          return Card(
            elevation: 0,
            child: ListTile(
              title: Text(
                "${posts[index]['title']}",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text("${posts[index]['body']}"),
              onTap: () =>
                  _navigateToPost(context: context, id: posts[index]['id']),
            ),
          );
        });
  }

  void _navigateToPost({required BuildContext context, required int id}) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => SinglePostPage(postId: id),
      ),
    );
  }
}
