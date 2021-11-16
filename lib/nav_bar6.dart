import 'package:fluid_bottom_nav_bar/fluid_bottom_nav_bar.dart';
import 'package:flutter/material.dart';

class NavBar6 extends StatefulWidget {
  const NavBar6({Key? key}) : super(key: key);

  @override
  _NavBar6State createState() => _NavBar6State();
}

class _NavBar6State extends State<NavBar6> {
  Widget? _child;

  @override
  void initState() {
    _child = const Text('Home');
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      appBar: AppBar(
        title: const Text('Fluid Bottom Nav Bar'),
      ),
      bottomNavigationBar: FluidNavBar(
        icons: [
          FluidNavBarIcon(
              icon: Icons.home,
              backgroundColor: const Color(0xFF4285F4),
              extras: {"label": "home"}),
          FluidNavBarIcon(
              icon: Icons.bookmark_border,
              backgroundColor: const Color(0xFFEC4134),
              extras: {"label": "bookmark"}),
          FluidNavBarIcon(
              icon: Icons.apps,
              backgroundColor: const Color(0xFFFCBA02),
              extras: {"label": "partner"}),
          FluidNavBarIcon(
              icon: Icons.settings,
              backgroundColor: const Color(0xFF34A950),
              extras: {"label": "conference"}),
        ],
        onChange: _handleNavigationChange,
        style: const FluidNavBarStyle(
            iconUnselectedForegroundColor: Colors.white,
            barBackgroundColor: Colors.blueGrey),
        animationFactor:
            1, //Set the factor to boost or slowdown animation. The default value is 1.0. If you use a value < 1 then the animation will be faster, if you use a value > 1 the animation will be slower
        scaleFactor:
            1.2, //| Define the factor used by the animation to zoom the selected icon. The default value is 1.2. If the value is > 1 then it is a zoom-in, if you use a value < 1 then it is zoom-out
        defaultIndex: 1,
        itemBuilder: (icon, item) => Semantics(
          label: icon.extras!["label"],
          child: item,
        ),
      ),
      body: _child,
    );
  }

  void _handleNavigationChange(int index) {
    setState(() {
      switch (index) {
        case 0:
          _child = const Text('Home');
          break;
        case 1:
          _child = const Text('Account');
          break;
        case 2:
          _child = const Text('Grid');
          break;
      }
      _child = AnimatedSwitcher(
        switchInCurve: Curves.easeOut,
        switchOutCurve: Curves.easeIn,
        duration: const Duration(milliseconds: 500),
        child: _child,
      );
    });
  }
}
