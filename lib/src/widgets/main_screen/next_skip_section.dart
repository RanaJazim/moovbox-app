import 'package:flutter/material.dart';

import '../app_bade.dart';

class NextSkipSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Text(
          "Skip",
          style: Theme.of(context).textTheme.headline6,
        ),
        AppBadge(
          padding: EdgeInsets.only(left: 15, right: 15, top: 5, bottom: 5),
          borderRadius: 20,
          child: Row(
            children: <Widget>[
              Text("Next"),
              SizedBox(width: 10),
              Icon(Icons.arrow_forward),
            ],
          ),
        ),
      ],
    );
  }
}
