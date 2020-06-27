import 'package:flutter/material.dart';

import '../img_avatar.dart';

class Avatar extends StatelessWidget {
  final isComment;
  final String imgUrl;

  Avatar({
    this.isComment = true,
    @required this.imgUrl,
  });

  double _getAvatarSize() {
    return isComment ? 50.0 : 30.0;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.15,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 15),
            child: ImageAvatar(
              width: _getAvatarSize(),
              height: _getAvatarSize(),
              imgUrl: imgUrl,
            ),
          ),
        ],
      ),
    );
  }
}
