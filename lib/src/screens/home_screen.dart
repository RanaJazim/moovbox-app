import 'package:flutter/material.dart';
import 'package:moovbox/src/widgets/movie_list.dart';

import '../widgets/app_bade.dart';
import '../widgets/app_card.dart';
import '../config/theme/app_color.dart';
import '../widgets/top_bottom_container.dart';
import '../widgets/movie_list_with_header.dart';

class HomeScreen extends StatelessWidget {
  final _leftRightPadding = 15.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(left: _leftRightPadding),
        child: ListView(
          children: <Widget>[
            Container(
              height: 150,
              child: _SearchBarSection(_leftRightPadding),
            ),
            Container(
              height: 250,
              child: _MoviesSection(),
            ),
            Container(
              height: 270,
              margin: EdgeInsets.only(top: 15),
              padding: EdgeInsets.only(right: _leftRightPadding),
              child: _MovieAndTvShowList(),
            ),
          ],
        ),
      ),
    );
  }
}

class _SearchBarSection extends StatelessWidget {
  final double _padding;

  _SearchBarSection(this._padding);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: _padding, top: 40),
      child: TopBottomContainer(
        top: Text(
          "Explore",
          style: Theme.of(context).textTheme.headline5,
        ),
        bottom: _SearchTextField(),
      ),
    );
  }
}

class _SearchTextField extends StatelessWidget {
  final _color = AppColors.light.withOpacity(0.5);
  final _borderRadius = 10.0;

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: "Search for Movies, TV Series ..",
        fillColor: _color,
        filled: true,
        prefixIcon: Icon(
          Icons.search,
          color: AppColors.medium,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(_borderRadius),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: _color, width: 2.0),
          borderRadius: BorderRadius.circular(_borderRadius),
        ),
      ),
    );
  }
}

class _MoviesSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MovieList(
      marginTop: 10.0,
      item: AppCard(
        width: 270,
        height: double.infinity,
        imgUrl: imgUrl,
        rating: 8.6,
        title: "Joker",
        genre: "Action, Comedy, Thriller",
      ),
    );
  }
}

class _MovieAndTvShowList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MovieListWithHeader(
      leadingTitle: "Popular Movies",
      trailing: AppBadge(
        child: Text("See All"),
        padding: EdgeInsets.all(5),
      ),
      item: AppCard(
        height: double.infinity,
        imgUrl: imgUrl,
        rating: 8.6,
        title: "Joker",
        genre: "Action, Comedy, Thriller",
      ),
    );
  }
}

const imgUrl =
    "https://i.pinimg.com/236x/8d/e6/ff/8de6ff15b66452e05670ce103693ca63.jpg";
