import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:messengging_app/MainPages/home_page.dart';
import 'package:messengging_app/MainPages/note_page.dart';
import 'package:messengging_app/MainPages/notification_page.dart';
import 'package:messengging_app/MainPages/profile_page.dart';

class ButtomNav extends StatefulWidget {
  const ButtomNav({super.key});

  @override
  State<ButtomNav> createState() => _ButtomNavState();
}

class _ButtomNavState extends State<ButtomNav> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  int _selectIndex = 0;

  void _navbar(int index) {
    if (index == 3) {
      _scaffoldKey.currentState?.openDrawer();
      return;
    }

    setState(() {
      _selectIndex = index;
    });
  }

  final List<Widget> _pages = [
    HomePage(),
    NotificationPage(),
    NotePage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,

      body: _pages[_selectIndex],

      drawer: const Drawer(
        child: ProfilePage(),
      ),

      /// CUSTOM BOTTOM NAV
      bottomNavigationBar: Container(
        height: 65,
        decoration: BoxDecoration(
          color: Color(0xFFD6E6EE),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            navItem(Icons.message, "message", 0),
            navItem(Icons.notifications, "notification", 1),
            navItem(Icons.note, "notes", 2),
            GestureDetector(
              onTap: () => _navbar(3),
              child: CircleAvatar(
                radius: 18,
                backgroundImage: AssetImage("assets/images/person1.png"),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget navItem(IconData icon, String label, int index) {
    bool selected = _selectIndex == index;

    return GestureDetector(
      onTap: () => _navbar(index),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            color: selected ? Color(0xFF6E9FB7) : Colors.grey,
          ),
          Text(
            label,
            style: GoogleFonts.fredoka(
              fontSize: 12,
              color: selected ? Color(0xFF6E9FB7) : Colors.grey,
            ),
          )
        ],
      ),
    );
  }
}
