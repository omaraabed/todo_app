import 'package:flutter/material.dart';
import 'package:to_do/home_layout/home_layout.dart';
import 'package:to_do/my_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: HomeLayout.routeName,
      routes: {
        HomeLayout.routeName :(context)=>HomeLayout(),
      },
      theme: MyThemeData.lightTheme,


    );
  }
}

