import 'package:flutter/material.dart';

import './app_card.dart';

class TopBottomContainer extends StatelessWidget {
  final Widget top;
  final double gap;
  final Widget bottom;

  TopBottomContainer({
    @required this.top,
    this.gap = 10.0,
    @required this.bottom,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        top,
        SizedBox(height: gap),
        Expanded(
          child: bottom,
        ),
        // bottom,
      ],
    );
  }
}

const imgUrl =
    "https://i.pinimg.com/236x/8d/e6/ff/8de6ff15b66452e05670ce103693ca63.jpg";
