import 'package:flutter/material.dart';
// 1
class Home extends StatefulWidget {
 
 @override
 // ignore: library_private_types_in_public_api
 _HomeState createState() => _HomeState();
}
class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
        title: Text(
        'Fooderlichhh',
        textAlign: TextAlign.center,
        // 2
        style: Theme.of(context).textTheme.headline6)
        ),
        body: Center(
        child: Text(
            'Let\'s get cooking ! ',
            // 3
            style: Theme.of(context).textTheme.headline6)),
        bottomNavigationBar: BottomNavigationBar(
 // 5
        selectedItemColor:
        Theme.of(context).textSelectionTheme.selectionColor,
        // 6
        items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
        icon: Icon(Icons.card_giftcard),
        label: 'Card'),
        BottomNavigationBarItem(
        icon: Icon(Icons.card_giftcard),
        label: 'Card2'),
        BottomNavigationBarItem(
        icon: Icon(Icons.card_giftcard),
        label: 'Card3'),
        ]
        )
        
      );
  } }
