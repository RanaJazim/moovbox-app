import 'package:flutter/material.dart';

import '../widgets/movie_info/header.dart';
import '../widgets/movie_info/info_section.dart';

class MovieInfoScreen extends StatelessWidget {
  final _leftRightPadding = 15.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Header(
            _leftRightPadding,
            imgUrl: imgUrl,
          ),
          Expanded(
            child: InfoSection(_leftRightPadding),
          ),
        ],
      ),
    );
  }
}

const imgUrl =
    "https://i.pinimg.com/236x/8d/e6/ff/8de6ff15b66452e05670ce103693ca63.jpg";
