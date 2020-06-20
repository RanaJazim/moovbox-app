import 'package:flutter/material.dart';

import './app_card.dart';

class ListTitleContainer extends StatelessWidget {
  final Widget title;
  final double gap;

  ListTitleContainer({
    this.title,
    this.gap = 10.0,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        title,
        SizedBox(height: gap),
        Expanded(
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 10,
            itemBuilder: (ctx, index) => Padding(
              padding: EdgeInsets.only(right: 15),
              child: AppCard(
                imgUrl: imgUrl,
                rating: 8.9,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

const imgUrl =
    "https://i.pinimg.com/236x/8d/e6/ff/8de6ff15b66452e05670ce103693ca63.jpg";
