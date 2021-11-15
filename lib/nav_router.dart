import 'package:bottom_nav_bar/home.dart';
import 'package:bottom_nav_bar/nav_bar1.dart';
import 'package:bottom_nav_bar/nav_bar2.dart';
import 'package:bottom_nav_bar/nav_bar3.dart';
import 'package:bottom_nav_bar/nav_bar4.dart';
import 'package:bottom_nav_bar/nav_bar5.dart';
import 'package:bottom_nav_bar/nav_bar6.dart';
import 'package:bottom_nav_bar/route_constants.dart';
import 'package:get/route_manager.dart';

class NavRouter {
  static final generateRoute = [
    GetPage(
      name: home,
      page: () => const Home(),
    ),
    GetPage(
      name: navBar1,
      page: () => const NavBar1(),
    ),
    GetPage(
      name: navBar2,
      page: () => const NavBar2(),
    ),
    GetPage(
      name: navBar3,
      page: () => const NavBar3(),
    ),
    GetPage(
      name: navBar4,
      page: () => const NavBar4(),
    ),
    GetPage(
      name: navBar5,
      page: () => const NavBar5(),
    ),
    GetPage(
      name: navBar6,
      page: () => const NavBar6(),
    ),
  ];
}
