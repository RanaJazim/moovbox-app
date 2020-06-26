import 'package:flutter/material.dart';

class AvatarList extends StatelessWidget {
  final _avatarHeight = 35.0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Positioned(
          child: Container(
            height: _avatarHeight,
            child: _Avatar(_casteImgUrl),
          ),
        ),
        Positioned(
          left: 25.0,
          child: Container(
            height: _avatarHeight,
            child: _Avatar(imgUrl),
          ),
        ),
        Positioned(
          left: 25.0 * 2,
          child: Container(
            height: _avatarHeight,
            child: _Avatar(_casteImgUrl2),
          ),
        ),
      ],
    );
  }
}

class _Avatar extends StatelessWidget {
  final String _imgUrl;

  _Avatar(this._imgUrl);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundImage: NetworkImage(_imgUrl),
    );
  }
}

const imgUrl =
    "https://i.pinimg.com/236x/8d/e6/ff/8de6ff15b66452e05670ce103693ca63.jpg";
const _casteImgUrl =
    "https://i.pinimg.com/236x/13/e4/9c/13e49c23a26375f774faccaeb5632289.jpg";
const _casteImgUrl2 =
    "https://i.pinimg.com/236x/c3/c6/da/c3c6dab4504a5bd721ee39eb64061230.jpg";
