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
          child : MaterialButton(
            onPressed: () {},
            elevation: 40.0,
            color: Colors.red[400],
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: Text(
              "Material Button",
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