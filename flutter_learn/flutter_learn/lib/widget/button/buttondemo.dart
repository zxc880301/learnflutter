import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';


class ButtonDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(title: Text("Button Demo"),),
        body: Container(
          padding: EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              RaisedButton(
                onPressed: () => print("普通Raised按钮"),
                child: Text("普通Raised按钮"),
                splashColor: Colors.green,
                shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)),
                materialTapTargetSize: MaterialTapTargetSize.padded,
              ),

              RaisedButton(
                onHighlightChanged: (bool b) => print("有颜色哟-onHighlightChanged,$b"),
                onPressed: () => print("有颜色哟"),
                child: Text("有颜色哟"),
                color: Colors.orangeAccent,
                textColor: Colors.white,
                elevation: 5.0,
                highlightColor: Colors.green,
              ),

              RaisedButton(
                onPressed: null,
                child: Text("不好使的按钮"),
                color: Colors.orangeAccent,
                textColor: Colors.white,
                disabledColor: Colors.white,
                disabledTextColor: Colors.red,
                disabledElevation: 0.5,
              ),

              FlatButton(
                onPressed: () => print("普通Flat按钮"),
                child: Text("普通Flat按钮"),
                splashColor: Colors.green,
                shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)),
                materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
              ),

              CusButton(
                onHighlightChanged: (bool b) => print("这个是没有padding的自定义按钮-onHighlightChanged,$b"),
                onPressed: () => print("这个是没有padding的自定义按钮"),
                child: Text("这个是没有padding的自定义按钮"),
//                color: Colors.orangeAccent,
//                textColor: Colors.white,
//                highlightColor: Colors.green,
//                materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
              ),
            ],
          ),
        ),
      );
  }
}

class CusButton extends FlatButton{
  const CusButton({
    Key key,
    onPressed,
    onHighlightChanged,
    textTheme,
    textColor,
    disabledTextColor,
    color,
    disabledColor,
    highlightColor,
    splashColor,
    colorBrightness,
    padding,
    shape,
    clipBehavior = Clip.none,
    materialTapTargetSize,
    @required child,
  }) : super(
      key: key,
      onPressed: onPressed,
      onHighlightChanged:onHighlightChanged,
      textTheme:textTheme,
      textColor:textColor,
      disabledTextColor:disabledTextColor,
      disabledColor:disabledColor,
      color:color,
      highlightColor:highlightColor,
      splashColor:splashColor,
      colorBrightness:colorBrightness,
      padding:padding,
      shape:shape,
      clipBehavior:clipBehavior,
      materialTapTargetSize:materialTapTargetSize,
      child: child);


  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final ButtonThemeData buttonTheme = ButtonTheme.of(context);
    final Color fillColor = enabled ? color : disabledColor;

    return new RawMaterialButton(
      onPressed: onPressed,
      onHighlightChanged: onHighlightChanged,
      fillColor: fillColor,
      elevation: 0.0,
      highlightElevation: 0.0,
      materialTapTargetSize: materialTapTargetSize ?? theme.materialTapTargetSize,
      padding: padding ?? EdgeInsets.all(0.0),
      constraints: BoxConstraints.tightFor(),
//      constraints: buttonTheme.constraints,
      shape: shape ?? buttonTheme.shape,
      clipBehavior: clipBehavior,
      child: child,
    );
  }
}