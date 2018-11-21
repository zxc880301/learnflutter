import 'package:flutter/material.dart';


class TextFieldDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return TextFieldState();
  }
}

class TextFieldState extends State<TextFieldDemo>{

  TextEditingController phone_ctrl = TextEditingController();
  TextEditingController pwd_ctrl = TextEditingController();
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  String form_str = "";

  @override
  Widget build(BuildContext context) {
        return Scaffold(
      appBar: AppBar(title: Text("TextField Demo")),
      body: Builder(builder: (context) => Container(
        padding: EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            TextField(
              controller: phone_ctrl,
              keyboardType: TextInputType.number,
              autofocus: true,
              decoration: InputDecoration(
                icon: Icon(Icons.phone_android),
                labelText: "手机号",
                hintText: "请输入手机号码",
              ),
            ),

            TextField(
              controller: pwd_ctrl,
              keyboardType: TextInputType.text,
              obscureText: true,
              decoration: InputDecoration(
                icon: Icon(Icons.vpn_key),
                labelText: "密码",
                hintText: "请输入6位密码",
              ),
            ),

            Align(
                alignment: Alignment.topRight,
                child: Padding(
                  padding: EdgeInsets.only(top: 20.0),
                  child: RaisedButton(
                    onPressed: login,
                    child: Text("登录"),
                  ),
                )),

            Form(
              key: _formkey,
              child: Column(
                children: <Widget>[
                  TextFormField(
                    decoration: InputDecoration(
                      icon: Icon(Icons.android),
                      labelText: "表单",
                      hintText: "请输入想输的",
                    ),
                    validator: (value){
                      if(value.isEmpty){
                        return "不能为空";
                      }
                    },
                    onSaved:(string){
                      print("onSaved:$string");
                      form_str = string;
                    }
                  ),

                  Align(
                      alignment: Alignment.topRight,
                      child: Padding(
                        padding: EdgeInsets.only(top: 20.0),
                        child: RaisedButton(
                          onPressed: () => submit(context),
                          child: Text("提交"),
                        ),
                      )),


                ],
              ),
            ),
          ],
        ),
      ),
    )
        );
  }
  void login() {
    print("用户名：${phone_ctrl.text}");
    print("密码：${pwd_ctrl.text}");
  }
  void submit(BuildContext ctx){
    if(_formkey.currentState.validate()){
      _formkey.currentState.save();
      Scaffold.of(ctx)
          .showSnackBar(SnackBar(content: Text(form_str)));
    }
  }


}

