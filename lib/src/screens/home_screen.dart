import 'package:flutter/material.dart';
import 'package:moovbox/src/widgets/app_bade.dart';

import '../widgets/image_background.dart';
import '../widgets/list_title_container.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ImageBackground(
        imgUrl: imgUrl,
        transparentRate: 0.3,
        child: _HomeScreenContent(),
      ),
    );
  }
}

class _HomeScreenContent extends StatelessWidget {
  final paddingAroundContainer = 20.0;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        left: paddingAroundContainer,
        top: paddingAroundContainer,
        bottom: paddingAroundContainer,
      ),
      child: _buildContent(context),
    );
  }

  Widget _buildContent(BuildContext context) {
    final heightBetweenSections = 20.0;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          "MoovBox",
          style: Theme.of(context).textTheme.headline3,
        ),
        Spacer(flex: 1),
        Text(
          "Home For Your",
          style: Theme.of(context).textTheme.headline4,
        ),
        SizedBox(height: heightBetweenSections),
        Text(
          "Home For Your Favourite Movies and TV Shows",
          style: Theme.of(context).textTheme.bodyText1,
        ),
        SizedBox(height: heightBetweenSections),
        Expanded(
          child: _BuildList(),
        ),
        SizedBox(height: 20),
        Padding(
          padding: EdgeInsets.only(right: paddingAroundContainer),
          child: _buildNextSkipSection(context),
        ),
      ],
    );
  }

  Widget _buildNextSkipSection(BuildContext context) {
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

class _BuildList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListTitleContainer(
      gap: 15,
      title: Row(
        children: <Widget>[
          Text(
            "Movies",
            style: Theme.of(context).textTheme.headline5,
          ),
          SizedBox(width: 20),
          Text(
            "Tv Shows",
            style: Theme.of(context).textTheme.headline5,
          ),
        ],
      ),
    );
  }
}

const imgUrl =
    "https://i.pinimg.com/236x/8d/e6/ff/8de6ff15b66452e05670ce103693ca63.jpg";
