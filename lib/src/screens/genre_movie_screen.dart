import 'package:flutter/material.dart';

import '../widgets/app_card.dart';

class GenreMovieScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Popular"),
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.only(right: 15.0),
            child: Icon(Icons.menu),
          ),
        ],
      ),
      body: _buildContent(context),
    );
  }

  Widget _buildContent(BuildContext context) {
    final padding = 15.0;

    return Padding(
      padding: EdgeInsets.only(top: padding, left: padding, right: padding),
      child: _MovieGrid(),
    );
  }
}

class _MovieGrid extends StatelessWidget {
  final _horizentalSpace = 15.0;
  final _verticalSpace = 15.0;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: 20,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: _horizentalSpace,
        mainAxisSpacing: _verticalSpace,
        childAspectRatio: MediaQuery.of(context).size.width /
            (MediaQuery.of(context).size.height * 0.85),
      ),
      itemBuilder: (ctx, index) => AppCard(
        imgUrl: imgUrl,
        title: "Joker",
        genre: "Comedy, Drama",
        rating: 8.6,
      ),
    );
  }
}

const imgUrl =
    "https://i.pinimg.com/236x/8d/e6/ff/8de6ff15b66452e05670ce103693ca63.jpg";
