import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NoteTile extends StatelessWidget {
  final String image;
  final String name;
  final String text;
  final String reaction;
  final String reactionCount;
  final String time;

  const NoteTile({
    super.key,
    required this.image,
    required this.name,
    required this.text,
    required this.reaction,
    required this.reactionCount,
    required this.time,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            radius: 30,
            backgroundImage: AssetImage('assets/images/person1.png'),
          ),
          const SizedBox(width: 15),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /// NAME
                Text(
                  name,
                  style: GoogleFonts.fredoka(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: const Color(0xFF6E9FB7),
                  ),
                ),

                const SizedBox(height: 4),

                Text(
                  text,
                  style: GoogleFonts.fredoka(
                    fontSize: 14,
                    color: const Color(0xFF6E9FB7),
                  ),
                ),

                const SizedBox(height: 10),

                Row(
                  children: [
                    const Icon(
                      Icons.reply,
                      size: 18,
                      color: Color(0xFF6E9FB7),
                    ),
                    const SizedBox(width: 5),
                    Text(
                      "reply",
                      style: GoogleFonts.fredoka(
                        color: const Color(0xFF6E9FB7),
                      ),
                    ),
                    const SizedBox(width: 20),
                    Text(
                      reaction,
                      style: const TextStyle(fontSize: 18),
                    ),
                    const SizedBox(width: 5),
                    Text(
                      reactionCount,
                      style: GoogleFonts.fredoka(
                        color: const Color(0xFF6E9FB7),
                      ),
                    ),
                    const Spacer(),
                    Text(
                      time,
                      style: GoogleFonts.fredoka(
                        fontSize: 12,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
