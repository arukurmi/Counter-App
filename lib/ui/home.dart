import 'dart:ui';

import 'package:flutter/cupertino.dart';
import'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Home extends StatefulWidget{
  @override
  State<StatefulWidget> createState(){
    return new HomeScreenState();
  }
}

class HomeScreenState extends State<Home>{

  int _counter = 0;
  void _increaseCounter(){
    setState(() {
      _counter = _counter + 1;
    });
  }
  void _refreshCounter(){
    setState(() {
      _counter = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Counter App"),
        centerTitle: true,
        backgroundColor: Colors.grey[800],
      ),
    body: new Container(
      child: new Center(
        child:new Column(
          mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new FloatingActionButton(
                onPressed: _increaseCounter,
                backgroundColor: Colors.grey[800],
                child: new Icon(Icons.add),

              ),
              SizedBox(height: 20,),
              new Text("Total taps: $_counter",
                  style: new TextStyle(
                    color: _counter%2==0 ? Colors.grey[800] : Colors.grey[700],
                    fontSize: 17,
                  )
              ),
              SizedBox(height: 70,),
              new FloatingActionButton(
                onPressed: _refreshCounter,
                backgroundColor: Colors.grey[600],
                child: new Icon(Icons.refresh),
              ),
              SizedBox(height: 10,),
              new Text("(Refresh the counter)",
                  style: new TextStyle(
                    // color: _counter%2==0 ? Colors.grey[800] : Colors.grey[700],
                    fontSize: 17,
                  )
              ),


            ]
        ),
      ),
    ),
    );
  }
}









