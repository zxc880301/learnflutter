import 'package:flutter/material.dart';

class ListViewDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ListViewState();
  }
}

class ListViewState extends State<ListViewDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ListView Demo"),
      ),
      body: Container(
        child: ListView.separated(
            shrinkWrap: true,
            separatorBuilder: (BuildContext context, int index) {
              return Divider(
                color: Colors.lightBlueAccent,
              );
            },
            itemCount: 20,
            itemBuilder: (BuildContext context, int index) {
              return ListTitleWidget(index);
            }),
      ),
    );
  }
}

class ListTitleWidget extends StatelessWidget {
  int index;

  ListTitleWidget(this.index);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () => Scaffold.of(context).showSnackBar(SnackBar(
          duration: Duration(milliseconds: 300), content: Text("标题$index"))),
      leading: Icon(Icons.android),
      title: Text("标题$index"),
      subtitle: Text("这是子标题$index"),
      trailing: Icon(Icons.keyboard_arrow_right),
    );
  }
}

//class ListViewState extends State<ListViewDemo> {
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      appBar: AppBar(
//        title: Text("ListView Demo"),
//      ),
//      body: Container(
//        child: ListView(
//          children: <Widget>[
//            ListItem("item1"),
//            ListItem("item2"),
//            ListItem("item3"),
//            ListItem("item4"),
//            ListItem("item5"),
//            ListItem("item6"),
//            ListItem("item7"),
//            ListItem("item8"),
//          ],
//        ),
//      ),
//    );
//  }
//}

class ListItem extends StatelessWidget {
  String title;

  ListItem(this.title);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
        minHeight: 90.0,
      ),
      child: Card(
        margin: EdgeInsets.only(top: 15.0, left: 15.0, right: 15.0),
        child: Container(
          padding: EdgeInsets.all(10.0),
          child: Text(title),
        ),
      ),
    );
  }
}
