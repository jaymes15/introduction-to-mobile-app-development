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
      title: "Media Query",
      home: MyHomepage(),
    );
  }
}

class MyHomepage extends StatefulWidget{
  @override
  _MyHomepageState createState() => _MyHomepageState();
}

class _MyHomepageState extends State<MyHomepage>{

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
       // automaticallyImplyLeading: false,
      title: Text(
      "Home Screen"
      ),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
           // width: MediaQuery.of(context).size.width, full device width
            width: MediaQuery.of(context).size.width * 0.3,
            height: MediaQuery.of(context).size.height * 0.5,
            decoration: BoxDecoration(
              color: Colors.red,
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.3,
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
          ),

        ],

      ),
    );
  }
}