import 'package:dot_navigation_bar/dot_navigation_bar.dart';
import 'package:flutter/material.dart';

class NavBar4 extends StatefulWidget {
  const NavBar4({Key? key}) : super(key: key);

  @override
  _NavBar2State createState() => _NavBar2State();
}

class _NavBar2State extends State<NavBar4> {
  var _selectedTab = _SelectedTab.home;

  void _handleIndexChanged(int i) {
    setState(() {
      _selectedTab = _SelectedTab.values[i];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dot Navigation Bar'),
      ),
      extendBody: true,
      bottomNavigationBar: DotNavigationBar(
        // enableFloatingNavBar: false,
        curve: Curves.easeIn,
        backgroundColor: Colors.blueGrey,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.black,
        currentIndex: _SelectedTab.values.indexOf(_selectedTab),
        onTap: _handleIndexChanged,
        dotIndicatorColor: Colors.white,
        borderRadius:
            40, //This can be used to change the shape of the floating nav bar
        items: [
          /// Home
          DotNavigationBarItem(
            icon: const Icon(Icons.home),
            // selectedColor: Colors.purple,
          ),

          /// Likes
          DotNavigationBarItem(
            icon: const Icon(Icons.favorite_border),
            // selectedColor: Colors.pink,
          ),

          /// Search
          DotNavigationBarItem(
            icon: const Icon(Icons.search),
            // selectedColor: Colors.orange,
          ),

          /// Profile
          DotNavigationBarItem(
            icon: const Icon(Icons.person),
            // selectedColor: Colors.teal,
          ),
        ],
      ),
      body: Container(
        color: Colors.white,
        child: const Center(
          child: Text('Data'),
        ),
      ),
    );
  }
}

enum _SelectedTab { home, favorite, search, person }
