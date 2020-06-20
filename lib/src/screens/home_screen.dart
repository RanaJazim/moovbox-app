import 'package:flutter/material.dart';

import '../config/theme/app_color.dart';
import '../widgets/top_bottom_container.dart';

class HomeScreen extends StatelessWidget {
  final _leftRightPadding = 15.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(left: _leftRightPadding),
        child: ListView(
          children: <Widget>[
            _SearchBarSection(_leftRightPadding),
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
          style: Theme.of(context).textTheme.headline6,
        ),
        bottom: _SearchTextField(),
      ),
    );
  }
}

class _SearchTextField extends StatelessWidget {
  final _color = AppColors.primary;
  final _borderRadius = 10.0;

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        prefixIcon: Icon(
          Icons.search,
          color: _color,
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
