import 'package:flutter/material.dart';

import '../image_background.dart';

class Header extends StatelessWidget {
  final double _padding;
  final String imgUrl;

  Header(this._padding, {this.imgUrl});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.35,
      width: double.infinity,
      child: ImageBackground(
        imgUrl: imgUrl,
        transparentRate: 0.8,
        child: Stack(
          children: <Widget>[
            Positioned(
              top: 30,
              left: _padding,
              right: _padding,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Icon(Icons.arrow_back),
                  Icon(Icons.favorite),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
