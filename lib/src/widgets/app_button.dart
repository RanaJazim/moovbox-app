import 'package:flutter/material.dart';

import '../config/theme/app_color.dart';

class AppButton extends StatelessWidget {
  final Color color;
  final String title;
  final Function onPress;

  AppButton({
    this.color = AppColors.primary,
    @required this.title,
    @required this.onPress,
  });

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      padding: EdgeInsets.symmetric(vertical: 15),
      color: color,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      onPressed: onPress,
      child: Text(
        "$title",
        style: Theme.of(context)
            .textTheme
            .bodyText1
            .copyWith(fontWeight: FontWeight.bold),
      ),
    );
  }
}
