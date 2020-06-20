import 'package:flutter/material.dart';

class ImageBackground extends StatelessWidget {
  final String imgUrl;
  final double transparentRate;
  final Widget child;
  final double borderRadius;

  ImageBackground({
    @required this.imgUrl,
    @required this.child,
    this.transparentRate = 0.7,
    this.borderRadius = 0.0,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 10, bottom: 10),
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(imgUrl),
          colorFilter: new ColorFilter.mode(
            Colors.black.withOpacity(transparentRate),
            BlendMode.dstATop,
          ),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.circular(borderRadius),
      ),
      child: child,
    );
  }
}
