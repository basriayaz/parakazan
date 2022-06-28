import 'package:flutter/material.dart';
import 'package:flutter_application_1/login_page.dart';

import 'market.dart';



class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedScreenIndex = 0;
  final List _screens = [
    {"screen": const MyStatefulWidget(), "title": "Screen A Title"},
    {"screen": const MyMarketScreen(), "title": "Screen B Title"}
  ];

  void _selectScreen(int index) {
    setState(() {
      _selectedScreenIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(
        //title: Text(_screens[_selectedScreenIndex]["title"]),
      //),
      body: _screens[_selectedScreenIndex]["screen"],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedScreenIndex,
        onTap: _selectScreen,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Screen A'),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: "Screen B")
        ],
      ),
    );
  }
}