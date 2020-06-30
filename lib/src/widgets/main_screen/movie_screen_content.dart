import 'package:flutter/material.dart';

import './movie_list.dart';
import './next_skip_section.dart';

class MainScreenContent extends StatelessWidget {
  final double _paddingAroundContainer;

  MainScreenContent(this._paddingAroundContainer);

  @override
  Widget build(BuildContext context) {
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
          child: MovieList(),
        ),
        SizedBox(height: 20),
        Padding(
          padding: EdgeInsets.only(right: _paddingAroundContainer),
          child: NextSkipSection(),
        ),
      ],
    );
  }
}
