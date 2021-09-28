import 'package:flutter/material.dart';

class PostCardWidget extends StatelessWidget {
  final String? title;
  final String? body;
  const PostCardWidget({Key? key,required this.title,required this.body}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.all(8),
      margin: EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(6),
      ),
      child: Column(
        children: [
          Text(title ?? ""),
          Text(body ?? ""),
        ],
      ),
    );
  }
}
