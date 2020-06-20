import 'package:flutter/material.dart';

import './image_background.dart';
import './app_bade.dart';

class AppCard extends StatelessWidget {
  final String genre;
  final Widget icon;
  final String imgUrl;
  final double rating;
  final String title;
  final double width;
  final double height;

  AppCard({
    this.genre = "Action",
    this.height = 200.0,
    this.icon,
    @required this.imgUrl,
    this.rating,
    this.title = "Title",
    this.width = 150.0,
  });

  List<Widget> widgets(List<Widget> widgets) {
    return widgets..removeWhere((widget) => widget == null);
  }

  @override
  Widget build(BuildContext context) {
    final heightBetweenSections = 5.0;

    return Container(
      width: width,
      height: height,
      child: ImageBackground(
        borderRadius: 20.0,
        imgUrl: imgUrl,
        transparentRate: 0.7,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: widgets(
              <Widget>[
                rating != null
                    ? Align(
                        alignment: Alignment.topRight,
                        child: AppBadge(
                          padding: EdgeInsets.all(3),
                          child: Text("$rating"),
                        ),
                      )
                    : null,
                Spacer(),
                icon != null
                    ? AppBadge(
                        child: Icon(
                          Icons.settings,
                          size: 20,
                        ),
                      )
                    : null,
                SizedBox(height: heightBetweenSections),
                Text(
                  "$title",
                  style: Theme.of(context).textTheme.headline6,
                ),
                SizedBox(height: heightBetweenSections),
                Text(
                  "$genre",
                  style: Theme.of(context).textTheme.subtitle1,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
