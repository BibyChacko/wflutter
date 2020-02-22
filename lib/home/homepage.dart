import 'package:flutter/material.dart';
import 'package:mcart/home/CartPage.dart';
import 'package:mcart/home/ProfilePage.dart';
import 'package:mcart/home/SearchPage.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int currentIndex = 0;

  List<Widget> contents = [SearchPage(),CartPage(),ProfilePage()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: contents[currentIndex ],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex:currentIndex,
           onTap: getCurrentIndex,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home),title: Text("Home")),
            BottomNavigationBarItem(icon: Icon(Icons.directions_car),title: Text('Cart')),
            BottomNavigationBarItem(icon: Icon(Icons.person),title: Text('Profile')),

          ]
      ),
    );
  }

  void getCurrentIndex(int value) {
    setState(() {
      currentIndex = value;
    });
  }
}
