import 'package:flutter/material.dart';
import 'package:moovbox/src/fake_date/data.dart';

import '../top_bottom_container.dart';
import '../side_by_side_container.dart';
import '../app_card.dart';
import '../../providers/movie_provider.dart';

class MovieList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TopBottomContainer(
      gap: 15,
      top: _Header(),
      bottom: _Footer(),
    );
  }
}

class _Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SideBySideContainer(
      leading: Text(
        "Movies",
        style: Theme.of(context).textTheme.headline6,
      ),
    );
  }
}

class _Footer extends StatelessWidget {
  final _movieProvider = MovieProvider();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _movieProvider.fetchAllMovies(),
      builder: (ctx, AsyncSnapshot<List<Movie>> snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(child: CircularProgressIndicator());
        } else {
          if (snapshot.hasError) {
            return Text("Error");
          } else {
            return _buildMovieList(snapshot.data);
          }
        }
      },
    );
  }

  Widget _buildMovieList(List<Movie> movies) {
    return Container(
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: movies.length,
        itemBuilder: (ctx, index) => _SingleMovieItem(movies[index]),
      ),
    );
  }
}

class _SingleMovieItem extends StatelessWidget {
  final Movie _movie;

  _SingleMovieItem(this._movie);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 15),
      child: AppCard(
        imgUrl: _movie.imgUrl,
        rating: _movie.rating,
        title: _movie.title,
        transparentRate: 0.4,
      ),
    );
  }
}
