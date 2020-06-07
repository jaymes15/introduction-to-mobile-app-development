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
      title: "Home Screen",
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
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
                "Home Screen",
              style: TextStyle(
                fontSize:30.0,
                fontWeight: FontWeight.w600,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: RaisedButton(
                padding: EdgeInsets.symmetric(
                  horizontal: 30.0,
                  vertical: 15.0,
                ),
                color: Colors.red,
                onPressed: (){
//                  Navigator.push(
//                    context,
//                    MaterialPageRoute(builder: (context) => firstscreen()),
//                  );
                Navigator.pushNamed(context, "/second");

                },
                child: Text(
                  "Screen 2",
                  style: TextStyle(
                    fontSize: 30.0,
                    color: Colors.white,
                  ),
                ),
              ),
            ),

            Padding(
              padding: EdgeInsets.all(10.0),
              child: RaisedButton(
                padding: EdgeInsets.symmetric(
                  horizontal: 30.0,
                  vertical: 15.0,
                ),
                color: Colors.red,
                onPressed: (){
//                  Navigator.push(
//                    context,
//                    MaterialPageRoute(builder: (context) => firstscreen()),
//                  );
                  Navigator.pushNamed(context, "/third");

                },
                child: Text(
                  "Screen 3",
                  style: TextStyle(
                    fontSize: 30.0,
                    color: Colors.white,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}