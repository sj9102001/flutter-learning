import 'package:flutter/material.dart';
import 'package:plantapp/constant.dart';
import 'package:plantapp/screens/details_screen.dart';

import './screens/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: kBackgroundColor,
        primaryColor: kPrimaryColor,
        textTheme: Theme.of(context).textTheme.apply(bodyColor: kTextColor),
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
      routes: {
        DetailScreen.routeName: (ctx) => DetailScreen(),
      },
    );
  }
}
