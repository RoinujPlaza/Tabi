import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MessagePage extends StatelessWidget {
  final String name;

  const MessagePage({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              decoration: const BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: Color(0xFF6E9FB7),
                    width: 2,
                  ),
                ),
              ),
              child: Row(
                children: [
                  IconButton(
                    icon: const Icon(Icons.arrow_back),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                  Expanded(
                    child: Text(
                      name,
                      style: GoogleFonts.fredoka(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: const Color(0xFF6E9FB7),
                      ),
                    ),
                  ),
                  const Icon(
                    Icons.group,
                    color: Color(0xFF6E9FB7),
                  )
                ],
              ),
            ),

            /// CHAT AREA
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: Column(
                  children: [
                    Row(
                      children: [
                        const CircleAvatar(
                          radius: 15,
                          backgroundColor: Colors.grey,
                        ),
                        const SizedBox(width: 8),
                        Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 15, vertical: 8),
                          decoration: BoxDecoration(
                            color: const Color(0xFFAFC6D3),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Text(
                            "ampol",
                            style: GoogleFonts.fredoka(),
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(height: 10),

                    Center(
                      child: Text(
                        "12:30",
                        style: GoogleFonts.fredoka(
                          fontSize: 12,
                          color: Colors.grey,
                        ),
                      ),
                    ),

                    const SizedBox(height: 10),

                    /// SENT MESSAGE
                    Align(
                      alignment: Alignment.centerRight,
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 15, vertical: 8),
                        decoration: BoxDecoration(
                          color: const Color(0xFFAFC6D3),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Text(
                          "heloooo......",
                          style: GoogleFonts.fredoka(),
                        ),
                      ),
                    ),

                    const SizedBox(height: 10),

                    Row(
                      children: [
                        const CircleAvatar(
                          radius: 15,
                          backgroundColor: Colors.grey,
                        ),
                        const SizedBox(width: 8),
                        Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 15, vertical: 8),
                          decoration: BoxDecoration(
                            color: const Color(0xFFAFC6D3),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Text(
                            "typing.....",
                            style: GoogleFonts.fredoka(),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),

            Container(
              padding: const EdgeInsets.all(10),
              color: const Color(0xFFAFC6D3),
              child: Row(
                children: const [
                  Icon(Icons.call),
                  SizedBox(width: 10),
                  Icon(Icons.image),
                  SizedBox(width: 10),
                  Icon(Icons.emoji_emotions_outlined),
                  SizedBox(width: 10),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "message.....",
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  Icon(Icons.send)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
