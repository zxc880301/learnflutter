import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    print("HomePageState----------build");
    return Scaffold(
        appBar: AppBar(title: Text("功能列表")),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            MyButton(toTextDemoPage, "Text组件"),
            MyButton(toButtonDemoPage, "Button组件"),
            MyButton(toTextFieldDemoPage, "TextField组件"),
          ],
        ));
  }

  void toTextDemoPage() {
    Navigator.pushNamed(context, "/text_normal");
  }

  void toButtonDemoPage() {
    Navigator.pushNamed(context, "/button_normal");
  }

  void toTextFieldDemoPage() {
    Navigator.pushNamed(context, "/textfield_normal");
  }
}

///这是一个按钮
class MyButton extends StatelessWidget {
  MyButton(this.pressed, this.text);

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
