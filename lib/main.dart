import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Text Field",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomepage(),
    );
  }
}

class MyHomepage extends StatefulWidget{
  @override
  _MyHomepageState createState() => _MyHomepageState();
}

class _MyHomepageState extends State<MyHomepage>{
  String texttodisplay;
  String textinputted;
  void changedata(){
      setState(() {
        texttodisplay = textinputted;
      });
  }
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Center(
        child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            "$texttodisplay",
          ),
          TextField(
            onChanged: (text){
              textinputted = text;
            },
            autocorrect: true,
            autofocus: true,

            //obscureText: true, password
            decoration: InputDecoration(
              //labelText: "username", placeholder and float up when typing
              helperText: "please enter your username",
              hintText: "username",
              hintStyle: TextStyle(
                fontSize:20.0,
                color:Colors.red,
              )
            ),
          ),
          RaisedButton(
            onPressed: changedata,
            child:Text(
              "Click Me"
            )
          )
        ],
      ),
      ),
    );
  }
}