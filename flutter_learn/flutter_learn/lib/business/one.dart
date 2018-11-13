import 'package:flutter/material.dart';


class OnePage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return OnePageState();
  }
}

class OnePageState extends State<OnePage>{
  @override
  Widget build(BuildContext context) {
    print("OnePageState-------buildbuildbuildbuildbuild");
    return Scaffold(
      body: Center(
        child: RaisedButton(onPressed: () => print("test"),
        child: Text("123"),
        ),


      ),
    );
    
    
  }

}