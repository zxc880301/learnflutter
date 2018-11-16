import 'package:flutter/material.dart';


class TextDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("TextDemo")),
      body: Container(
        padding: EdgeInsets.all(20.0),
        child:Column(
        children: <Widget>[
          TextNormal(),

        ],
      ),
    )
    );
  }
}


class TextNormal extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        Text("普通Text"),
        Text("这是一个TextStyle练习",style: TextStyle(
          color: Color(0xffff0000),
          fontSize: 12.0,
          fontWeight: FontWeight.bold,
          fontStyle: FontStyle.italic,
          letterSpacing: 6.0,
          textBaseline:TextBaseline.ideographic,
        ),)

      ],
    );
  }
}

