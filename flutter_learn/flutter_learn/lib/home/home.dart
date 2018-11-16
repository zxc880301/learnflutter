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
      appBar: AppBar(title: Text("功能列表")),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
            MyButton(to1page,"Text组件"),
        ],
      )
    );
  }

  void to1page(){
    Navigator.pushNamed(context, "/text_normal");
  }

}





///这是一个按钮
class MyButton extends StatelessWidget{
  MyButton(this.pressed,this.text);
  VoidCallback pressed;
  String text;

  @override
  Widget build(BuildContext context) {
    Widget myBtn = RaisedButton(
        onPressed: pressed,
        child: Text(text),
    );

    myBtn = Container(
      margin: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 0.0),
      child: myBtn,
    );

    return myBtn;
  }



}

