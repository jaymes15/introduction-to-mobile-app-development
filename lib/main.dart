import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Image.asset("assets/images/rice.jpg",
        height:100.0,
        width:100.0,
          fit:BoxFit.cover,

        ),
        //Image.network("url"), image url
      ),
    );
  }
}