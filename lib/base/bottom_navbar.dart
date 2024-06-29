import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';

class BottomNavbar extends StatefulWidget {
  const BottomNavbar({super.key});

  @override
  State<BottomNavbar> createState() => _BottomNavbarState();
}

class _BottomNavbarState extends State<BottomNavbar> {
  final appScreens = [
    const Text('Home'),
    const Text('Search'),
    const Text('Tickets'),
    const Text('Profile'),
  ];

  var currentScreenIndex = 0;

  void _onSelectScreen(int index) {
    setState(() {
      currentScreenIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: appScreens[currentScreenIndex],
        centerTitle: true,
        backgroundColor: Colors.black45,
        foregroundColor: Colors.white70,
      ),
      body: Center(child: appScreens[currentScreenIndex]),
      // bottomNavigationBar: const Row(
      //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //   children: [
      //     Text("Home"),
      //     Text("Settings"),
      //     Text("Home"),
      //     Text("Home"),
      //   ],
      // ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentScreenIndex,
        onTap: _onSelectScreen,
        selectedItemColor: Colors.blueGrey,
        unselectedItemColor: const Color(0xFF526400),
        showSelectedLabels: false,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(FluentSystemIcons.ic_fluent_home_regular),
              activeIcon: Icon(FluentSystemIcons.ic_fluent_home_filled),
              label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(FluentSystemIcons.ic_fluent_search_regular),
              activeIcon: Icon(FluentSystemIcons.ic_fluent_search_filled),
              label: 'Search'),
          BottomNavigationBarItem(
              icon: Icon(FluentSystemIcons.ic_fluent_ticket_regular),
              activeIcon: Icon(FluentSystemIcons.ic_fluent_ticket_filled),
              label: 'Tickets'),
          BottomNavigationBarItem(
              icon: Icon(FluentSystemIcons.ic_fluent_person_regular),
              activeIcon: Icon(FluentSystemIcons.ic_fluent_person_filled),
              label: 'Profile'),
        ],
      ),
    );
  }
}
