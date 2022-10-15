import 'package:flutter/material.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:ticket_booking_system/screens/home_screen.dart';

class ButtomBar extends StatefulWidget {
  const ButtomBar({super.key});

  @override
  State<ButtomBar> createState() => _ButtomBarState();
}

class _ButtomBarState extends State<ButtomBar> {
  int _selectedindex = 0;
  static final List<Widget> _widgetOption = <Widget>[
    const HomeScreen(),
    const Text("Search"),
    const Text("Ticket"),
    const Text("Profile")
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedindex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOption[_selectedindex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 20,
        showUnselectedLabels: false,
        selectedItemColor: Colors.blueGrey,
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(FluentSystemIcons.ic_fluent_home_regular),
              activeIcon: Icon(FluentSystemIcons.ic_fluent_home_filled),
              label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(FluentSystemIcons.ic_fluent_search_regular),
              activeIcon: Icon(FluentSystemIcons.ic_fluent_search_filled),
              label: "Search"),
          BottomNavigationBarItem(
              icon: Icon(FluentSystemIcons.ic_fluent_ticket_regular),
              activeIcon: Icon(FluentSystemIcons.ic_fluent_ticket_filled),
              label: "Ticket"),
          BottomNavigationBarItem(
              icon: Icon(FluentSystemIcons.ic_fluent_person_regular),
              activeIcon: Icon(FluentSystemIcons.ic_fluent_person_filled),
              label: "Profile"),
        ],
        onTap: _onItemTapped,
        currentIndex: _selectedindex,
        showSelectedLabels: false,
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}
