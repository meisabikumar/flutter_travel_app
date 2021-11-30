import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travel_app/pages/navPages/home_page.dart';
import 'package:travel_app/pages/navPages/my_page.dart';
import 'package:travel_app/pages/navPages/search_page.dart';

import 'bar_item_page.dart';

class MainPage extends StatefulWidget {
  MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List pages = [Homepage(), BarItemPage(), SearchPage(), MyPage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[0],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.black54,
        unselectedItemColor: Colors.grey.withOpacity(0.5),
        showUnselectedLabels: false,
        showSelectedLabels: false,
        elevation: 0,
        items: [
          BottomNavigationBarItem(title: Text("Home"), icon: Icon(Icons.apps)),
          BottomNavigationBarItem(
              title: Text("Bar"), icon: Icon(Icons.bar_chart_sharp)),
          BottomNavigationBarItem(
              title: Text("Search"), icon: Icon(Icons.search)),
          BottomNavigationBarItem(title: Text("My"), icon: Icon(Icons.person)),
        ],
      ),
    );
  }
}
