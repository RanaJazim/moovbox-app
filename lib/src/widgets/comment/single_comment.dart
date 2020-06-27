import 'package:flutter/material.dart';

import './avatar.dart';
import './comment_body.dart';

class SingleComment extends StatelessWidget {
  final double _horizentalSpacing;

  SingleComment(this._horizentalSpacing);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: _horizentalSpacing, vertical: 10.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Avatar(imgUrl: _profileImgUrl),
          SizedBox(width: 20),
          Expanded(
            child: CommentBody(),
          ),
        ],
      ),
    );
  }
}

const _profileImgUrl =
    "https://i.pinimg.com/236x/c3/c6/da/c3c6dab4504a5bd721ee39eb64061230.jpg";
