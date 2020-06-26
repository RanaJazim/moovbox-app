import 'package:flutter/material.dart';

import '../../config/theme/app_color.dart';
import '../app_bade.dart';

class Rating extends StatelessWidget {
  final _color = AppColors.primary;
  final _spaceBetweenWidgets = 3.0;

  @override
  Widget build(BuildContext context) {
    return AppBadge(
      padding: EdgeInsets.only(left: 5.0, right: 5.0, top: 3.0, bottom: 3.0),
      borderColor: _color,
      child: Row(
        children: <Widget>[
          Icon(
            Icons.star,
            size: 20,
            color: _color,
          ),
          SizedBox(width: _spaceBetweenWidgets),
          Text(
            "9.0",
            style: TextStyle(color: _color),
          ),
          SizedBox(width: _spaceBetweenWidgets),
        ],
      ),
    );
  }
}
