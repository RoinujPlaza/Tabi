import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:messengging_app/widgets/NoteTile/note_tile.dart';

class NotePage extends StatelessWidget {
  const NotePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            /// HEADER
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "notes",
                    style: GoogleFonts.fredoka(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: const Color(0xFF6E9FB7),
                    ),
                  ),
                  Row(
                    children: const [
                      Icon(Icons.search, color: Color(0xFF6E9FB7), size: 28),
                      SizedBox(width: 15),
                      Icon(Icons.group, color: Color(0xFF6E9FB7), size: 28),
                    ],
                  )
                ],
              ),
            ),

            Expanded(
              child: ListView(
                children: const [
                  NoteTile(
                    image: "assets/profile.jpg",
                    name: "roinuj plaza",
                    text: "kapoya na uy, wlaay kiss?",
                    reaction: "❤️",
                    reactionCount: "22",
                    time: "24 mins ago",
                  ),
                  Divider(color: Color(0xFF6E9FB7)),
                  NoteTile(
                    image: "assets/profile.jpg",
                    name: "roinuj plaza",
                    text: "kapoya na uy, wlaay kiss?",
                    reaction: "❤️",
                    reactionCount: "22",
                    time: "24 mins ago",
                  ),
                  Divider(color: Color(0xFF6E9FB7)),
                  NoteTile(
                    image: "assets/profile.jpg",
                    name: "roinuj plaza",
                    text: "kapoya na uy, wlaay kiss?",
                    reaction: "❤️",
                    reactionCount: "22",
                    time: "24 mins ago",
                  ),
                  Divider(color: Color(0xFF6E9FB7)),
                  NoteTile(
                    image: "assets/profile.jpg",
                    name: "roinuj plaza",
                    text: "kapoya na uy, wlaay kiss?",
                    reaction: "❤️",
                    reactionCount: "22",
                    time: "24 mins ago",
                  ),
                  Divider(color: Color(0xFF6E9FB7)),
                  NoteTile(
                    image: "assets/profile.jpg",
                    name: "ampol",
                    text: "kasakit sa akong ngipon, apil ang heart",
                    reaction: "😮",
                    reactionCount: "69",
                    time: "20 mins ago",
                  ),
                  Divider(color: Color(0xFF6E9FB7)),
                  NoteTile(
                    image: "assets/profile.jpg",
                    name: "angkol",
                    text: "kilalanin mo binabagga mo boi",
                    reaction: "😄",
                    reactionCount: "23",
                    time: "23 h ago",
                  ),
                  Divider(color: Color(0xFF6E9FB7)),
                  NoteTile(
                    image: "assets/profile.jpg",
                    name: "angkol",
                    text: "buang mo tanan",
                    reaction: "😡",
                    reactionCount: "105",
                    time: "1 h ago",
                  ),
                  Divider(color: Color(0xFF6E9FB7)),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
