import 'package:flutter/material.dart';
import 'dart:async';
import 'package:flutter_learn/home/home.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => SplashState();
}

class SplashState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    countDown();
  }

  @override
  Widget build(BuildContext context) {
    print("SplashState----------build");
    Widget icon = Image.asset("images/loading_bg.png", fit: BoxFit.contain);
    icon = Align(child: icon, alignment: Alignment.bottomCenter);

    Widget bodyWidget = Container(
      color: Colors.white,
      child: icon,
    );
    return Scaffold(
      body: bodyWidget,
    );
  }

  void countDown() {
    Duration duration = Duration(seconds: 5);
    Future.delayed(duration, () => toHomePage());
  }

  void toHomePage() {
    Navigator.of(context).pushReplacementNamed("/home");
  }
}
