// import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: Home(),
)); 
  


class Home extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(
          title: Text('My Phone NTN'),
          centerTitle: true,
          backgroundColor: Colors.red[600],
        ),
        // body: Center(
        //   // child: Image(
        //   //   image: AssetImage('assets/wallper.jpg'),
        //   // )
        //   child: Icon(
        //     Icons.airport_shuttle,
        //     color: Colors.lightBlue,
        //     size: 50.0,
        //   ),
        //    ),
        body: Column (
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            // Row(
            //   children: <Widget>[
            //     Text('hello,'),
            //     Text(' world')
            //   ],
            // ),
            Center(
              child: Container(
                padding: EdgeInsets.all(30.0),
                // alignment: Alignment.center,
                color: Colors.pinkAccent,
                child: Text('Level 2',)
              ),
            ),
            Container(
              padding: EdgeInsets.all(40.0),
              color: Colors.amber,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text('Level 3 ',),
              ),
            ),
            Container(
              padding: EdgeInsets.all(20.0),
              // alignment: Alignment.center,
              color: Colors.cyan,
              child: Text('Level 1',)
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
