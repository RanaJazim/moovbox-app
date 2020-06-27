import 'package:flutter/material.dart';

import '../../config/theme/app_color.dart';
import '../app_divider.dart';

class CommentBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        ListTile(
          contentPadding: EdgeInsets.only(top: 0.0),
          title: Text(
            "Jazim Abbas",
            style: Theme.of(context)
                .textTheme
                .bodyText1
                .copyWith(fontWeight: FontWeight.bold),
          ),
          subtitle: const Text("2 hours ago"),
        ),
        SizedBox(height: 10),
        Text(
          "$_message",
          style: Theme.of(context).textTheme.bodyText1,
        ),
        SizedBox(height: 30),
        _ActionText(
          title: "Reply",
          onPress: () {},
        ),
        SizedBox(height: 10),
        AppDivider(),
      ],
    );
  }
}

class _ActionText extends StatelessWidget {
  final String title;
  final Function onPress;

  _ActionText({
    @required this.title,
    @required this.onPress,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Text(
        "$title",
        style: Theme.of(context).textTheme.bodyText1.copyWith(
              color: AppColors.primary,
              fontWeight: FontWeight.bold,
            ),
      ),
    );
  }
}

const _message =
    "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters,";
