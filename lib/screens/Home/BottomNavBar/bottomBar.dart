import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';
import 'package:yoliday/screens/Home/Homescreen.dart';
import 'package:yoliday/screens/input/inputScreen.dart';
import 'package:yoliday/screens/portfolio/portfolioScreen.dart';
import 'package:yoliday/screens/profile/profileScreen.dart';

class Bottombar extends StatefulWidget {
  const Bottombar({super.key});

  @override
  State<Bottombar> createState() => _BottombarState();
}

class _BottombarState extends State<Bottombar> {
  PersistentTabController _tabController = PersistentTabController();
  @override
  void initState() {
    _tabController = PersistentTabController(initialIndex: 0);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      context,
      screens: const [
        Homescreen(),
        Portfolioscreen(),
        Inputscreen(),
        Profilescreen()
      ],
      controller: _tabController,
      items: [
        PersistentBottomNavBarItem(
            icon: const Icon(Icons.home),
            title: 'Home',
            activeColorPrimary: const Color(0xffDF5532),
            inactiveColorPrimary: const Color(0xffD6D1D5)),
        PersistentBottomNavBarItem(
            icon: const Icon(Icons.shopping_cart_sharp),
            title: 'portfolio',
            activeColorPrimary: const Color(0xffDF5532),
            inactiveColorPrimary: const Color(0xffD6D1D5)),
        PersistentBottomNavBarItem(
            icon: const Icon(Icons.input),
            title: 'Input',
            activeColorPrimary: const Color(0xffDF5532),
            inactiveColorPrimary: const Color(0xffD6D1D5)),
        PersistentBottomNavBarItem(
            icon: const Icon(Icons.person),
            title: 'profile',
            activeColorPrimary: const Color(0xffDF5532),
            inactiveColorPrimary: const Color(0xffD6D1D5))
      ],
      navBarStyle: NavBarStyle.style4,
    );
  }
}
