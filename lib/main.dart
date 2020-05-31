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
          child : Text(
            "Hi Am James learning Dart",
            textAlign: TextAlign.center,
            textDirection: TextDirection.rtl,
            softWrap: true,
            overflow: TextOverflow.visible,
            style: TextStyle(
              fontSize: 40.0,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic,
              //color: Colors.blue,
              color:Color(0xffe74c3c),
              //color: Color.fromRGBO(255, 0, 0, 1.0),
              fontFamily: "Lucida Sans Unicode",
              decoration: TextDecoration.underline,
              decorationColor: Colors.black,
              decorationStyle: TextDecorationStyle.dotted,
              //background: Paint()..color= Colors.black..style = PaintingStyle.stroke,
             // backgroundColor: Colors.black
            ),
          ),
      ),
      ),
    );
  }
}