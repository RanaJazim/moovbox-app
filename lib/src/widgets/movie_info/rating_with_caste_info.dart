import 'package:flutter/material.dart';

import './avatar_list.dart';
import './rating.dart';

class RatingWithCasteInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Row(
          children: <Widget>[
            Container(
              width: 100,
              child: AvatarList(),
            ),
            Text(
              "325 People Watching",
              style: Theme.of(context).textTheme.subtitle1,
            ),
          ],
        ),
        Rating(),
      ],
    );
  }
}
