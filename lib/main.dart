import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title : "Sample App",
      theme : ThemeData(
        primarySwatch: Colors.red,
      ),
      home : Scaffold(
        appBar: AppBar(
          title: Text(
            "My App",
            style: TextStyle(
              fontSize: 20.0,
            ),
          ),
        ),
        body: Center(
          child : FlatButton(
            onPressed:() {},
            color: Colors.red,
           // highlightColor: Colors.cyan,
            splashColor: Colors.green,
            padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
            child: Text(
              "flat button",
              style: TextStyle(
                fontSize: 30.0,
                color: Colors.white,
              ),
            ),
        ),
      ),
      ),
    );
  }
}