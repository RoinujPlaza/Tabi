import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
//import 'package:messengging_app/widgets/NavBar/SlaphScreen/splash_screen.dart';
import 'package:messengging_app/widgets/SlaphScreen/splash_screen.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  Widget menuTile(String text, IconData icon, {VoidCallback? onTap}) {
    return Column(
      children: [
        ListTile(
          title: Text(
            text,
            style: GoogleFonts.fredoka(
              color: const Color(0xFF5B8FA8),
              fontSize: 18,
            ),
          ),
          trailing: Icon(icon, color: Colors.black),
          onTap: onTap,
        ),
        const Divider(
          color: Color(0xFF5B8FA8),
          thickness: 1,
          height: 1,
        )
      ],
    );
  }

  void showMoodDialog() {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          backgroundColor: const Color(0xFFE8F3F8),
          title: Text(
            "Select your mood",
            style: GoogleFonts.fredoka(
              color: const Color(0xFF5B8FA8),
              fontWeight: FontWeight.bold,
            ),
          ),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ListTile(
                leading: const Text("😄", style: TextStyle(fontSize: 24)),
                title: Text("Happy", style: GoogleFonts.fredoka()),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: const Text("😢", style: TextStyle(fontSize: 24)),
                title: Text("Sad", style: GoogleFonts.fredoka()),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: const Text("😡", style: TextStyle(fontSize: 24)),
                title: Text("Angry", style: GoogleFonts.fredoka()),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: const Text("😍", style: TextStyle(fontSize: 24)),
                title: Text("Love", style: GoogleFonts.fredoka()),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.zero,
      children: [
        DrawerHeader(
          decoration: const BoxDecoration(
            color: Color(0xFF9DB7C3),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "profile",
                style: GoogleFonts.fredoka(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: const Color(0xFF5B8FA8),
                ),
              ),
              const SizedBox(height: 15),
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "roinuj plaza",
                        style: GoogleFonts.fredoka(
                          fontSize: 25,
                          color: const Color(0xFF5B8FA8),
                        ),
                      ),
                      const SizedBox(height: 3),
                      Text(
                        "edit profile",
                        style: GoogleFonts.fredoka(
                          color: const Color.fromARGB(255, 87, 126, 145),
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                  const Spacer(),
                  const CircleAvatar(
                    radius: 32,
                    backgroundImage: AssetImage('assets/images/ampol.jpg'),
                  ),
                ],
              ),
            ],
          ),
        ),
        menuTile("dark mode", Icons.dark_mode),
        menuTile("add a friend", Icons.person_add),
        menuTile(
          "mood setter",
          Icons.emoji_emotions,
          onTap: showMoodDialog,
        ),
        menuTile("support", Icons.support_agent),
        menuTile("feedback", Icons.star),
        menuTile("settings", Icons.settings),
        menuTile(
          "log out",
          Icons.logout,
          onTap: () {
            Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(
                builder: (context) => SplashScreen(),
              ),
              (route) => false,
            );
          },
        ),
      ],
    );
  }
}

 