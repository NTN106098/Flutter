import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: Home(),
)); 

class Home extends StatelessWidget {
 

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My phone is NTN'),
        centerTitle: true,
        backgroundColor: Colors.red[600],
     ),
      body: Row(
        children: <Widget>[
        Expanded(
          child: Image.asset('assets/anh2.jpg'),
          flex: 10,),
          Expanded(
            flex: 1 ,
            child: Container(
              padding: EdgeInsets.all(30.0),
              color: Colors.cyan,
              child: Text('1'),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              padding: EdgeInsets.all(30.0),
              color: Colors.pinkAccent,
              child: Text('2'),
            ),
          ),
          Expanded (
            flex: 1,
            child: Container(
               padding: EdgeInsets.all(30.0),
              color: Colors.amber,
              child: Text('3'),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
            onPressed: () {},
            child: Text('click'),
            backgroundColor: Colors.red[600],
           ),
    );
  }
}

