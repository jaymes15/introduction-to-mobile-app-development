import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'dart:async';
import 'firstscreen.dart';
import 'secondscreen.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes:{
    '/second' : (context) => firstscreen(),
    '/third' : (context) => secondscreen(),
    },
      title: "Orientation",
      home: MyHomepage(),
    );
  }
}

class MyHomepage extends StatefulWidget{
  @override
  _MyHomepageState createState() => _MyHomepageState();
}

class _MyHomepageState extends State<MyHomepage>{
Widget potrait(){
  return Center(
    child: Text(
      "potrait",
      style: TextStyle(
        color: Colors.red,
        fontSize: 30.0,
      ),
    ),
  );
}
Widget landscape(){
  return Center(
    child: Text(
      "landscape",
      style: TextStyle(
        color: Colors.red,
        fontSize: 30.0,
      ),
    ),
  );
}

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
       // automaticallyImplyLeading: false,
      title: Text(
      "Orientation"
      ),
      ),
      body: OrientationBuilder(
        builder: (context, orientation){
          if (orientation == Orientation.portrait){
            return potrait();
          }
          else{
                return landscape();
          }
        }
      ),
    );
  }
}