import 'package:flutter/material.dart';
import 'package:listcomments/core/models/Comment.dart';
import 'package:listcomments/ui/shared/app_colors.dart';
import 'package:listcomments/ui/shared/ui_helpers.dart';

class Comments extends StatelessWidget {
  final int postId;

  const Comments({Key key, this.postId}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Hi I m comments'),
    );
  }
}

class CommentItem extends StatelessWidget {
  final Comment comment;

  const CommentItem(this.comment);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.0),
      margin: EdgeInsets.symmetric(vertical: 10.0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0), color: commentColor),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            comment.name,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          UIHelper.verticalSpaceSmall(),
          Text(comment.body),
        ],
      ),
    );
  }
}
