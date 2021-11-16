import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';

class NavBar2 extends StatefulWidget {
  const NavBar2({Key? key}) : super(key: key);

  @override
  _NavBar2State createState() => _NavBar2State();
}

class _NavBar2State extends State<NavBar2> {
  int _selectedIndex = 0;
  PageController? _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Bottom Navy Bar")),
      body: SizedBox.expand(
        child: PageView(
          controller: _pageController,
          onPageChanged: (index) {
            setState(() => _selectedIndex = index);
          },
          children: <Widget>[
            Container(
              color: Colors.blueGrey,
            ),
            Container(
              color: Colors.red,
            ),
            Container(
              color: Colors.green,
            ),
            Container(
              color: Colors.blue,
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavyBar(
        curve: Curves.easeInBack, //This is for the physics of the animation
        mainAxisAlignment: MainAxisAlignment
            .spaceBetween, //Can be changed if there are more items. Use alignment.start or alignment.end
        selectedIndex: _selectedIndex,
        onItemSelected: (index) {
          setState(() => _selectedIndex = index);
          _pageController!.jumpToPage(index);
        },
        items: <BottomNavyBarItem>[
          BottomNavyBarItem(
              title: const Text('Item One'), icon: const Icon(Icons.home)),
          BottomNavyBarItem(
              title: const Text('Item Two'), icon: const Icon(Icons.apps)),
          BottomNavyBarItem(
              title: const Text('Item Three'),
              icon: const Icon(Icons.chat_bubble)),
          BottomNavyBarItem(
              title: const Text('Item Four'), icon: const Icon(Icons.settings)),
        ],
      ),
    );
  }
}
