import 'package:flutter/material.dart';

class NavBar2 extends StatefulWidget {
  const NavBar2({Key? key}) : super(key: key);

  @override
  _NavBar2State createState() => _NavBar2State();
}

class _NavBar2State extends State<NavBar2> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Nav Bar 2'),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.blueGrey,
        selectedItemColor: Colors.white,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        unselectedItemColor: Colors.black45,
        type: BottomNavigationBarType.fixed,
        iconSize: 30,
        elevation: 0,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.ac_unit), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.ac_unit), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.ac_unit), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.ac_unit), label: ''),
        ],
      ),
      body: _body(_selectedIndex),
    );
  }

  _body(int index) {
    switch (index) {
      case 0:
        return const Text('data 1');
      case 1:
        return const Text('data 2');
      case 2:
        return const Text('data 3');
      case 3:
        return const Text('data 4');
      default:
        return const Text('data 5');
    }
  }
}
