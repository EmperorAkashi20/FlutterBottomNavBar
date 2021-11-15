import 'package:bottom_nav_bar/home.dart';
import 'package:bottom_nav_bar/route_constants.dart';
import 'package:get/route_manager.dart';

class NavRouter {
  static final generateRoute = [
    GetPage(
      name: home,
      page: () => const Home(),
    )
  ];
}
