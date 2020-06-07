import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'dart:async';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Material splash",
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
void initState(){
  super.initState();
  debugPrint("started The splash screen");
  Timer(Duration(seconds: 10),finished);
}
String display="";
void finished(){
  debugPrint("Finished");
  setState(() {
    display = "Splash \n Screen";
  });

}
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.red,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircularProgressIndicator(
                backgroundColor: Colors.white,
              ),
                Text(
                  display,
                  style: TextStyle(
                    fontSize: 40.0,
                    color: Colors.white,
                    fontWeight: FontWeight.w800,
                    fontFamily: "cursive",
                  ),
                ),
            ],
          ),
        ],
      ),
    );
  }
}