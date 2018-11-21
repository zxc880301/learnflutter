import 'package:flutter/material.dart';
import 'package:flutter_learn/splash/splash_screen.dart';
import 'package:flutter_learn/home/home.dart';
import 'package:flutter_learn/business/one.dart';
import 'package:flutter_learn/widget/text/textdemo.dart';
import 'package:flutter_learn/widget/button/buttondemo.dart';
import 'package:flutter_learn/widget/textfield/textfielddemo.dart';

class RouteConfig{

  static final Map<String, WidgetBuilder> routes = {
    "/text_normal":(BuildContext context) => TextDemo(),
    "/button_normal":(BuildContext ctx) => ButtonDemo(),
    "/textfield_normal":(BuildContext context) => TextFieldDemo(),
    "/one":(BuildContext context) => OnePage(),
    "/home": (BuildContext context) => HomePage(),
    "/":(BuildContext context) => SplashScreen(),
  };
}