import 'package:flutter/material.dart';
import 'package:flutter_learn/splash/splash_screen.dart';
import 'package:flutter_learn/home/home.dart';
import 'package:flutter_learn/business/one.dart';
import 'package:flutter_learn/widget/text/textdemo.dart';

class RouteConfig{

  static final Map<String, WidgetBuilder> routes = {
    "/text_normal":(BuildContext context) => TextDemo(),
    "/one":(BuildContext context) => OnePage(),
    "/home": (BuildContext context) => HomePage(),
    "/":(BuildContext context) => SplashScreen(),
  };
}