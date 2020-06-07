import 'package:flutter/material.dart';


class firstscreen extends StatefulWidget{
@override
_firstscreenState createState() => _firstscreenState();
}

class _firstscreenState extends State<firstscreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            "Second Screen"
        ),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(""
                "Second Screen",
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
                  Navigator.pop(context);
                },
                child: Text(
                  "Screen 2",
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