import 'package:flutter/material.dart';

class NavBar1 extends StatefulWidget {
  const NavBar1({Key? key}) : super(key: key);

  @override
  _NavBar1State createState() => _NavBar1State();
}

class _NavBar1State extends State<NavBar1> {
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
        title: const Text('Default Bottom Nav Bar'),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.blueGrey,
        selectedItemColor: Colors.white,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        unselectedItemColor: Colors.black45,
        type: BottomNavigationBarType
            .fixed, //This can be changed to shifting which will then allow for movement of the icons
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
