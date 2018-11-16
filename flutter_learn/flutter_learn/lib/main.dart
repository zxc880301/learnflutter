import 'package:flutter/material.dart';
import 'package:flutter_learn/splash/splash_screen.dart';
import 'package:flutter_learn/config/consts.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    print("MyApp----------build");
    return new MaterialApp(
      title: 'Flutter Demo',
      routes: RouteConfig.routes,
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
//      home: SplashScreen(),
    );
  }
}
