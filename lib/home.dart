import 'package:bottom_nav_bar/nav_bar1.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'nav_bar2.dart';
import 'nav_bar3.dart';
import 'nav_bar4.dart';
import 'nav_bar5.dart';
import 'nav_bar6.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: const Text(
          'Navigate from here',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: ListView(
        shrinkWrap: true,
        children: [
          ListTile(
            onTap: () {
              Get.to(() => const NavBar1());
            },
            title: const Text('Default Bottom Nav Bar'),
          ),
          ListTile(
            onTap: () {
              Get.to(() => const NavBar2());
            },
            title: const Text('Bottom Navy Bar'),
          ),
          ListTile(
            onTap: () {
              Get.to(() => const NavBar3());
            },
            title: const Text('SS Bottom Navigation Bar'),
          ),
          ListTile(
            onTap: () {
              Get.to(() => const NavBar4());
            },
            title: const Text('Dot Navigation Bar'),
          ),
          ListTile(
            onTap: () {
              Get.to(() => const NavBar5());
            },
            title: const Text('GNav Bar'),
          ),
          ListTile(
            onTap: () {
              Get.to(() => const NavBar6());
            },
            title: const Text('Nav Bar 6'),
          ),
        ],
      ),
    );
  }
}
