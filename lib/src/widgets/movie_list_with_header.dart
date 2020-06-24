import 'package:flutter/material.dart';

import './top_bottom_container.dart';
import './side_by_side_container.dart';
import './movie_list.dart';

class MovieListWithHeader extends StatelessWidget {
  final Widget item;
  final String leadingTitle;
  final Widget trailing;

  MovieListWithHeader({
    this.item,
    this.leadingTitle,
    this.trailing,
  });

  @override
  Widget build(BuildContext context) {
    return TopBottomContainer(
      top: SideBySideContainer(
        leading: Text(
          "$leadingTitle",
          style: Theme.of(context).textTheme.headline5,
        ),
        trailing: trailing,
      ),
      bottom: MovieList(item: item),
    );
  }
}

const imgUrl =
    "https://i.pinimg.com/236x/8d/e6/ff/8de6ff15b66452e05670ce103693ca63.jpg";
