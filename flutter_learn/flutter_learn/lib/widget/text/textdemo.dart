import 'package:flutter/material.dart';


class TextDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("TextDemo")),
      body: Container(
        padding: EdgeInsets.all(20.0),
        child:Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          TextNormal(),
          TextNormal1(),
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
          decoration: TextDecoration.combine(<TextDecoration>[
            TextDecoration.lineThrough,
            TextDecoration.overline,
            TextDecoration.underline
          ]),
          decorationColor: Colors.green,
          decorationStyle: TextDecorationStyle.dashed
        ),)

      ],
    );
  }
}

class TextNormal1 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return Text("       这是一个Text练习，后面的是补字数用的，《SCP基金会》(Special Containment Procedures Foundation)是一个有关于各种超自然现象、个体等等事件的系列作品，由于作者数量众多且面向全球，符合条件的文章都可以被接纳。",
      softWrap: true,
      maxLines: 3,
      overflow: TextOverflow.ellipsis,
      textScaleFactor: 1.1,
      textAlign: TextAlign.start,
      semanticsLabel: "double dollar",
    );
  }
}

