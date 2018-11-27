import 'package:flutter/material.dart';
import 'package:flutter_learn/splash/splash_screen.dart';
import 'package:flutter_learn/home/home.dart';
import 'package:flutter_learn/business/one.dart';
import 'package:flutter_learn/widget/text/textdemo.dart';
import 'package:flutter_learn/widget/button/buttondemo.dart';
import 'package:flutter_learn/widget/textfield/textfielddemo.dart';
import 'package:flutter_learn/widget/listview/listviewdemo.dart';

class RouteConfig{

  static final Map<String, WidgetBuilder> routes = {
    "/listview_normal":(BuildContext context) => ListViewDemo(),
    "/text_normal":(BuildContext context) => TextDemo(),
    "/button_normal":(BuildContext ctx) => ButtonDemo(),
    "/textfield_normal":(BuildContext context) => TextFieldDemo(),
    "/one":(BuildContext context) => OnePage(),
    "/home": (BuildContext context) => HomePage(),
    "/":(BuildContext context) => SplashScreen(),
  };

  static final String RKEY_LISTVIEW_NORMAL = "/listview_normal";
  static final String RKEY_TEXT_NORMAL = "/text_normal";
  static final String RKEY_BUTTON_NORMAL = "/button_normal";
  static final String RKEY_TEXTFIELD_NORMAL = "/textfield_normal";
  static final String RKEY_ONE = "/one";
  static final String RKEY_ROOT = "/";



}