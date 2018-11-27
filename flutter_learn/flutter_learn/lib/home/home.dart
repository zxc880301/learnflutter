import 'package:flutter/material.dart';
import 'package:flutter_learn/config/consts.dart';

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
            MyButton(toListViewDemoPage,"ListView组件")
          ],
        ));
  }

  void toTextDemoPage() {
    Navigator.pushNamed(context, RouteConfig.RKEY_TEXT_NORMAL);
  }

  void toButtonDemoPage() {
    Navigator.pushNamed(context, RouteConfig.RKEY_BUTTON_NORMAL);
  }

  void toTextFieldDemoPage() {
    Navigator.pushNamed(context, RouteConfig.RKEY_TEXTFIELD_NORMAL);
  }
  void toListViewDemoPage() {
    Navigator.pushNamed(context, RouteConfig.RKEY_LISTVIEW_NORMAL);
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
