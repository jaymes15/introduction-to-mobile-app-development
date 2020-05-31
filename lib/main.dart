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
          child : IconButton(
            onPressed: () {},
            splashColor: Colors.cyan,
            icon: Icon(
              Icons.add_a_photo,
            ),
            iconSize: 40.0,
            tooltip: "Add Photo",
          ),

      ),
      ),
    );
  }
}