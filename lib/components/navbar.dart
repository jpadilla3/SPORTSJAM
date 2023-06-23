import 'package:flutter/material.dart';

import '../main screens/account.dart';
import '../main screens/home.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  List pages = [
    const HomePage(),
    const AccountPage(),
  ];

  int currentIndex1 = 0;

  void onTap(int index) {
    setState(() {
      currentIndex1 = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex1],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        onTap: onTap,
        unselectedFontSize: 0,
        selectedFontSize: 0,
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.grey,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        currentIndex: currentIndex1,
        items: const [
          //home page
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),

          //account page
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle_rounded), label: 'Account')
        ],
      ),
    );
  }
}
