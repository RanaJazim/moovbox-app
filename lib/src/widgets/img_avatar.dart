import 'package:flutter/material.dart';

class ImageAvatar extends StatelessWidget {
  final double width;
  final double height;
  final String imgUrl;

  ImageAvatar({
    this.width = 80.0,
    this.height = 80.0,
    @required this.imgUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      child: CircleAvatar(
        backgroundImage: NetworkImage(imgUrl),
      ),
    );
  }
}
