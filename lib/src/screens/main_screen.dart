import 'package:flutter/material.dart';

import '../widgets/image_background.dart';
import '../widgets/main_screen/movie_screen_content.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ImageBackground(
        imgUrl: imgUrl,
        transparentRate: 0.3,
        child: _MainScreenContent(),
      ),
    );
  }
}

class _MainScreenContent extends StatelessWidget {
  final paddingAroundContainer = 20.0;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        left: paddingAroundContainer,
        top: paddingAroundContainer,
        bottom: paddingAroundContainer,
      ),
      child: MainScreenContent(paddingAroundContainer),
    );
  }
}

const imgUrl =
    "https://i.pinimg.com/236x/8d/e6/ff/8de6ff15b66452e05670ce103693ca63.jpg";
