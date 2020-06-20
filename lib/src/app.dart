import 'package:flutter/material.dart';

import './config//theme/app_color.dart';
import './screens/home_screen.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Moovbox",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: AppColors.dark,
        textTheme: TextTheme(
          headline1: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
          headline2: TextStyle(fontSize: 65.0, fontWeight: FontWeight.bold),
          headline3: TextStyle(fontSize: 50.0, fontWeight: FontWeight.bold),
          headline4: TextStyle(fontSize: 40.0, fontWeight: FontWeight.bold),
          headline5: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
          headline6: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
          bodyText1: TextStyle(fontSize: 19.0, fontWeight: FontWeight.normal),
        ),
      ),
      home: HomeScreen(),
    );
  }
}
