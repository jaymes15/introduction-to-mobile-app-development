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
Icon cusIcon = Icon(Icons.search);
Widget cusSearchBar = Text("App Bar");
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
//        bottom:PreferredSize(
//          preferredSize: Size(0.0,50.0),
//          child: Container(),
//        ),
        elevation: 30.0,
        backgroundColor: Colors.blue,
        titleSpacing:0.0,
        actions: <Widget>[
//          InkWell(
//            onTap: (){},
//            child: SizedBox(
//              //width:10.0,
//
//              child:cusIcon,
//            ),
//          ),
          IconButton(
            onPressed:(){
              setState(() {
                if(this.cusIcon.icon == Icons.search){
                  this.cusIcon = Icon(Icons.cancel);
                  this.cusSearchBar = TextField(
                                                  textInputAction: TextInputAction.go,
                                                  style:TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 16.0,
                                                  ),
                                                decoration: InputDecoration(
                                                  border: InputBorder.none,
                                                  hintText: "Search Text",
                                                ),
                                               );
                }
                else{
                      this.cusIcon = Icon(Icons.search);
                      this.cusSearchBar = Text("App Bar");
                }
              });
            },
            icon:cusIcon,

          ),
          IconButton(
            onPressed: (){},
            icon: Icon(Icons.more_vert),
          )

        ],

        //centerTitle: true,
        leading: IconButton(
          onPressed: (){},
          icon : Icon(Icons.menu)
        ),
        title:cusSearchBar,
      ),
      body: Center(

      ),
    );
  }
}