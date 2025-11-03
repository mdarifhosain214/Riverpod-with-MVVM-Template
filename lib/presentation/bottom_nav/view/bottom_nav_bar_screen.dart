import 'package:flutter/material.dart';

class BottomNavBarScreen extends StatefulWidget {
  const BottomNavBarScreen({super.key});

  @override
  State<BottomNavBarScreen> createState() => _BottomNavBarScreenState();
}

class _BottomNavBarScreenState extends State<BottomNavBarScreen> {
  final List<Widget> _screenList = [
    Scaffold(body: Center(child: Text("Home"))),
    Scaffold(body: Center(child: Text("dangerous"))),
    Scaffold(body: Center(child: Text("search"))),
    Scaffold(body: Center(child: Text("settings"))),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screenList[0],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home)),
          BottomNavigationBarItem(icon: Icon(Icons.dangerous)),
          BottomNavigationBarItem(icon: Icon(Icons.search)),
          BottomNavigationBarItem(icon: Icon(Icons.settings)),
        ],
      ),
    );
  }
}

