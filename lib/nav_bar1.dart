import 'package:flutter/material.dart';

class NavBar1 extends StatefulWidget {
  const NavBar1({Key? key}) : super(key: key);

  @override
  _NavBar1State createState() => _NavBar1State();
}

class _NavBar1State extends State<NavBar1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Nav Bar 1'),
      ),
    );
  }
}
