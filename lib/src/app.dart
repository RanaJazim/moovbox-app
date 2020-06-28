import 'package:flutter/material.dart';

import './config//theme/app_color.dart';
import './screens/home_screen.dart';
import './screens/main_screen.dart';
import './screens/movie_info_screen.dart';
import './screens/category_screen.dart';
import './screens/profile_screen.dart';
import './screens/packages_screen.dart';
import './screens/comment_list_screen.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Moovbox",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: AppColors.dark,
        primaryColor: AppColors.dark,
        textTheme: TextTheme(
          headline1: TextStyle(
              fontSize: 72.0, fontWeight: FontWeight.bold, color: Colors.white),
          headline2: TextStyle(
              fontSize: 65.0, fontWeight: FontWeight.bold, color: Colors.white),
          headline3: TextStyle(
              fontSize: 50.0, fontWeight: FontWeight.bold, color: Colors.white),
          headline4: TextStyle(
              fontSize: 40.0, fontWeight: FontWeight.bold, color: Colors.white),
          headline5: TextStyle(
              fontSize: 30.0, fontWeight: FontWeight.bold, color: Colors.white),
          headline6: TextStyle(
              fontSize: 20.0, fontWeight: FontWeight.bold, color: Colors.white),
          bodyText1: TextStyle(fontSize: 19.0, fontWeight: FontWeight.normal),
        ),
      ),
      home: PackagesScreen(),
    );
  }
}
