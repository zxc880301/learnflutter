import 'package:flutter/material.dart';


class HomePage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => HomePageState();
}

class HomePageState extends State<HomePage>{
  @override
  Widget build(BuildContext context) {
    print("HomePageState----------build");
    return Scaffold(
      body: Center(child:RaisedButton(onPressed: to1page,
      child: Text("我是Home页"),
      ),
    ));
  }

  void to1page(){
    Navigator.pushNamed(context, "/one");
//    Navigator.of(context).popAndPushNamed("/one");//把自己弹出，把新页面压入
//    Navigator.pushNamedAndRemoveUntil(context, "/one", ModalRoute.withName("/"));//压入新页面，弹出栈内页面至指定name
  }

}