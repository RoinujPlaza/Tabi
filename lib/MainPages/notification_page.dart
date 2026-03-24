import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            /// TOP BAR
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "notifications",
                    style: GoogleFonts.fredoka(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF6E9FB7),
                    ),
                  ),
                  Row(
                    children: const [
                      Icon(
                        Icons.search,
                        color: Color(0xFF6E9FB7),
                        size: 28,
                      ),
                      SizedBox(width: 15),
                      Icon(
                        Icons.group,
                        color: Color(0xFF6E9FB7),
                        size: 28,
                      ),
                    ],
                  )
                ],
              ),
            ),

            Expanded(
              child: ListView(
                children: [
                  notificationTile(
                    "kupal",
                    "posted a new note",
                    "9 mins ago",
                  ),
                  notificationTile(
                    "ampol",
                    "react to your note",
                    "24 mins ago",
                  ),
                  notificationTile(
                    "ampol and others..",
                    "22 people react to your note",
                    "1 h ago",
                  ),
                  notificationTile(
                    "roinuj plaza",
                    "set her mood to angry",
                    "9 h ago",
                  ),
                  notificationTile(
                    "roinuj plaza",
                    "you missed a call",
                    "9 mins ago",
                  ),
                  notificationTile(
                    "roinuj plaza",
                    "you missed a video call",
                    "9 mins ago",
                  ),
                  notificationTile(
                    "roinuj plaza",
                    "posted a new note",
                    "9 mins ago",
                  ),
                  notificationTile(
                    "roinuj plaza",
                    "posted a new note",
                    "9 mins ago",
                  ),
                  notificationTile(
                    "roinuj plaza",
                    "posted a new note",
                    "9 mins ago",
                  ),
                  notificationTile(
                    "roinuj plaza",
                    "posted a new note",
                    "9 mins ago",
                  ),
                  notificationTile(
                    "roinuj plaza",
                    "posted a new note",
                    "9 mins ago",
                  ),
                  notificationTile(
                    "roinuj plaza",
                    "posted a new note",
                    "9 mins ago",
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget notificationTile(String name, String message, String time) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Color(0xFF6E9FB7),
            width: 1,
          ),
        ),
      ),
      child: ListTile(
        leading: CircleAvatar(
          radius: 22,
          backgroundImage: AssetImage('assets/images/ampol.jpg'),
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              name,
              style: GoogleFonts.fredoka(
                fontWeight: FontWeight.bold,
                color: Color(0xFF6E9FB7),
              ),
            ),
            Text(
              time,
              style: GoogleFonts.fredoka(
                fontSize: 12,
                color: Colors.grey,
              ),
            )
          ],
        ),
        subtitle: Text(
          message,
          style: GoogleFonts.fredoka(
            color: Color(0xFF6E9FB7),
          ),
        ),
      ),
    );
  }
}
