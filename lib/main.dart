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

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('App Bar'),
      ),
      //bottomSheet:Text("this is a bottom sheet "),
//      floatingActionButton: IconButton(
//        onPressed:(){},
//        icon: Icon(Icons.message),
//        color: Colors.green,
//      ),
//      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      bottomNavigationBar: BottomAppBar(
        child: Row(
          children: <Widget>[
            Expanded(
              child: SizedBox(
                height: 60.0,
                child: InkWell(
                  onTap: (){},
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        Icons.search,
                      ),
                      Text("search"),
                    ],
                  ),
                ),
              ),
            ),


            Expanded(
              child: SizedBox(
                height: 60.0,
                child: InkWell(
                  onTap: (){},
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        Icons.search,
                      ),
                      Text("search"),
                    ],
                  ),
                ),
              ),
            ),


            Expanded(
              child: SizedBox(
                height: 60.0,
                child: InkWell(
                  onTap: (){},
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        Icons.search,
                      ),
                      Text("search"),
                    ],
                  ),
                ),
              ),
            ),
          ],
        )
      ),
      body: Center(),
    );
  }
}