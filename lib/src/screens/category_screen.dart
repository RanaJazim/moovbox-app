import 'package:flutter/material.dart';

import '../config/theme/app_color.dart';
import '../widgets/image_background.dart';

class CategoryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Category"),
          bottom: TabBar(
            indicatorSize: TabBarIndicatorSize.label,
            indicatorColor: AppColors.primary,
            labelColor: AppColors.primary,
            unselectedLabelColor: AppColors.white,
            tabs: [
              Tab(text: "Movies"),
              Tab(text: "Tv Series"),
              Tab(text: "My Favourite"),
            ],
          ),
        ),
        body: Container(
          margin: EdgeInsets.all(10),
          child: TabBarView(
            children: <Widget>[
              _CategorList(),
              _CategorList(),
              Text("Favourite"),
            ],
          ),
        ),
      ),
    );
  }
}

class _CategorList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (ctx, index) => Container(
        margin: EdgeInsets.only(top: 10, bottom: 10),
        // color: Colors.blue,
        width: double.infinity,
        height: 100,
        child: _CategoryCard(),
      ),
    );
  }
}

class _CategoryCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ImageBackground(
      borderRadius: 15.0,
      transparentRate: 0.6,
      imgUrl: _imgHeader,
      child: Padding(
        padding: EdgeInsets.only(left: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Action",
              style: Theme.of(context).textTheme.headline5,
            ),
            SizedBox(height: 5),
            Text(
              "123 Movies",
              style:
                  Theme.of(context).textTheme.bodyText1.copyWith(fontSize: 17),
            ),
          ],
        ),
      ),
    );
  }
}

const _imgHeader =
    "https://images.pexels.com/photos/2752776/pexels-photo-2752776.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500";
