import 'package:flutter/material.dart';

class MovieList extends StatelessWidget {
  final Widget item;
  final double marginTop;
  final double spacing;

  MovieList({
    this.item,
    this.marginTop = 5.0,
    this.spacing = 15.0,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: 10,
      itemBuilder: (ctx, index) => Container(
        padding: EdgeInsets.only(right: spacing),
        margin: EdgeInsets.only(top: marginTop),
        child: item,
      ),
    );
  }
}
