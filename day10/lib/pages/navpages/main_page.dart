import 'package:day10/pages/navpages/bar_item_page.dart';
import 'package:day10/pages/home_page.dart';
import 'package:day10/pages/navpages/my_page.dart';
import 'package:day10/pages/navpages/search_page.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List pages = [HomePage(), BarItemPage(), SearchPage(), MyPage()];

  int currentIndex = 0;
  void onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    // List<Widget> _navBarItemList = [];
    // for (var i = 0; i < _iconList.length; i++) {
    //   _navBarItemList.add(buildNavigationItem(_iconList[i], i));
    // }
    return Scaffold(
        backgroundColor: Colors.white,
        body: pages[currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          unselectedFontSize: 0,
          selectedFontSize: 0,
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.white,
          onTap: onTap,
          currentIndex: currentIndex,
          selectedItemColor: Colors.black54,
          unselectedItemColor: Colors.grey.withOpacity(0.5),
          showUnselectedLabels: false,
          showSelectedLabels: false,
          elevation: 0,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.apps), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.bar_chart_sharp), label: 'Bar'),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Person'),
          ],
        ));
  }

  // Widget buildNavigationItem(IconData icon, int index) {
  //   return GestureDetector(
  //     onTap: () {},
  //     child: Container(
  //       child: Icon(Icons.apps),
  //       width: MediaQuery.of(context).size.width / _iconList.length,
  //     ),
  //   );
  // }
}
