import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ss_bottom_navbar/ss_bottom_navbar.dart';

class NavBar3 extends StatefulWidget {
  const NavBar3({Key? key}) : super(key: key);

  @override
  _NavBar3State createState() => _NavBar3State();
}

class _NavBar3State extends State<NavBar3> {
  final _isVisible = true;

  final _colors = [
    Colors.red,
    Colors.blue,
    Colors.green,
    Colors.orange,
    Colors.teal
  ];
  final items = [
    SSBottomNavItem(text: 'Home', iconData: Icons.home),
    SSBottomNavItem(text: 'Store', iconData: Icons.store),
    SSBottomNavItem(text: 'Add', iconData: Icons.add, isIconOnly: true),
    SSBottomNavItem(text: 'Explore', iconData: Icons.explore),
    SSBottomNavItem(text: 'Profile', iconData: Icons.person),
  ];

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => SSBottomBarState(),
      child: Consumer<SSBottomBarState>(
        builder: (context, state, _) {
          return Scaffold(
            appBar: AppBar(
              title: const Text('SS Bottom Navigation Bar'),
            ),
            body: IndexedStack(
              index: state.selected,
              children: _buildPages(),
            ),
            floatingActionButton: FloatingActionButton(
              onPressed: () {
                state.setSelected(3);
              },
              child: Icon(_isVisible
                  ? Icons.keyboard_arrow_down
                  : Icons.keyboard_arrow_up),
            ),
            bottomNavigationBar: SSBottomNav(
              items: items,
              state: state,
              color: Colors.blueGrey,
              selectedColor: Colors.white,
              duration: const Duration(milliseconds: 300),
              unselectedColor: Colors.black,
              visible: _isVisible,
              bottomSheetWidget: _bottomSheet(),
              showBottomSheetAt: 2,
            ),
          );
        },
      ),
    );
  }

  Widget _page(Color color) => Container(color: color);

  List<Widget> _buildPages() => _colors.map((color) => _page(color)).toList();

  Widget _bottomSheet() => Container(
        color: Colors.white,
        child: Column(
          children: [
            const ListTile(
              leading: Icon(Icons.camera_alt),
              title: Text('Use Camera'),
            ),
            const ListTile(
              leading: Icon(Icons.photo_library),
              title: Text('Choose from Gallery'),
            ),
            ListTile(
              leading: const Icon(Icons.edit),
              title: const Text('Write a Story'),
              onTap: () {
                Navigator.maybePop(context);
              },
            ),
          ],
        ),
      );
}
