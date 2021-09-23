import 'dart:convert';

import 'package:chopper/chopper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:try_chopper/data/post_api_service.dart';
import 'package:try_chopper/model/built_post.dart';

class SinglePostPage extends StatelessWidget {
  final int? postId;
  const SinglePostPage({Key? key, required this.postId}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chopper Blog'),
      ),
      body: FutureBuilder<Response<BuiltPost>>(
        future: Provider.of<PostApiService>(context).getPost(postId),
        builder: (BuildContext context,
            AsyncSnapshot<Response<BuiltPost>> snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            // final Map post = jsonDecode(snapshot.data!.bodyString);
            final post = snapshot.data?.body;
            return _buildPost(
              post: post,
            );
          } else {
            return Center(
              child: CupertinoActivityIndicator(),
            );
          }
        },
      ),
    );
  }

  Padding _buildPost({required BuiltPost? post}) {
    return Padding(
      padding: EdgeInsets.all(8),
      child: Column(
        children: [
          Text(
            "${post?.title}",
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 9,
          ),
          Text("${post?.body}"),
        ],
      ),
    );
  }
}
