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
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[


            Text(
              "this is text",
              style:TextStyle(
                color: Colors.red,
                fontSize: 20.0,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),

            ),
            RaisedButton(
              onPressed: () {},
              elevation: 30.0,
              color: Colors.white,
              shape: Border.all(color: Colors.red, width: 2.0, style: BorderStyle.solid),
              child: Text(
                "this is a  raised button",
                style: TextStyle(
                color: Colors.black,
                fontSize: 20.0,
                ),
              )
            ),
          ]
        ),
      ),
      ),
      );

  }
}