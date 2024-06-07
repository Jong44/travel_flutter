import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:travel_app/config/ColorConfig.dart';
import 'package:travel_app/pages/MainPage/DiscoveryPage.dart';
import 'package:travel_app/pages/MainPage/FavoritePage.dart';
import 'package:travel_app/pages/MainPage/HomePage.dart';
import 'package:travel_app/pages/MainPage/ProfilePage.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List<Widget> _pages = <Widget>[
    const HomePage(),
    const DiscoveryPage(),
    const FavoritePage(),
    const ProfilePage(),
  ];

  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Iconsax.home4),
              label: 'Home',
              activeIcon: Icon(Iconsax.home5)),
          BottomNavigationBarItem(
            icon: Icon(Iconsax.ticket4),
            label: 'Discovery',
            activeIcon: Padding(
                padding: EdgeInsets.only(right: 22),
                child: Icon(Iconsax.ticket5)),
          ),
          BottomNavigationBarItem(
            icon: Icon(Iconsax.heart),
            label: 'Favorite',
            activeIcon: Icon(Iconsax.heart5),
          ),
          BottomNavigationBarItem(
              icon: Icon(Iconsax.setting),
              label: 'Profile',
              activeIcon: Padding(
                  padding: EdgeInsets.only(right: 22),
                  child: Icon(Iconsax.setting5))),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: ColorConfig.primaryColor,
        unselectedItemColor: Colors.grey,
        onTap: _onItemTapped,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}
