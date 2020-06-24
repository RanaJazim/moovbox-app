import 'package:flutter/material.dart';

import '../widgets/app_card.dart';
import '../config/theme/app_color.dart';

class GenreMovieScreen extends StatefulWidget {
  @override
  _GenreMovieScreenState createState() => _GenreMovieScreenState();
}

class _GenreMovieScreenState extends State<GenreMovieScreen> {
  ScrollController _controller;
  bool _isShow = false;

  @override
  void initState() {
    _controller = ScrollController();
    _controller.addListener(_scrollListener);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  _scrollListener() {
    final height = 200;

    if (_controller.offset >= height && !_controller.position.outOfRange) {
      setState(() {
        _isShow = true;
      });
    }
    if (_controller.offset <= height && !_controller.position.outOfRange) {
      setState(() {
        _isShow = false;
      });
    }
  }

  void _scrollToTop() {
    _controller.animateTo(
      0,
      duration: Duration(milliseconds: 500),
      curve: Curves.linear,
    );
  }

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
      floatingActionButton: Visibility(
        visible: _isShow,
        child: FloatingActionButton(
          backgroundColor: AppColors.primary,
          foregroundColor: AppColors.white,
          onPressed: _scrollToTop,
          child: Icon(Icons.arrow_upward),
        ),
      ),
      body: _buildContent(context),
    );
  }

  Widget _buildContent(BuildContext context) {
    final padding = 15.0;

    return Padding(
      padding: EdgeInsets.only(top: padding, left: padding, right: padding),
      child: _MovieGrid(_controller),
    );
  }
}

class _MovieGrid extends StatelessWidget {
  final _controller;
  final _horizentalSpace = 15.0;
  final _verticalSpace = 15.0;

  _MovieGrid(this._controller);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      controller: _controller,
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
