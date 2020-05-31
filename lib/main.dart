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
          child : RaisedButton(
            onPressed: () {},
            color: Colors.white,
            //highlightColor: Colors.blue,
            splashColor: Colors.blue,
            padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
            elevation: 10.0,
            highlightElevation: 30.0,
            shape: Border.all(color: Colors.red, width:2.0, style: BorderStyle.solid),

            child: Text(
              "Raised Button",
              style: TextStyle(
                fontSize: 20.0
              ),
            ),
          ),
      ),
      ),
    );
  }
}