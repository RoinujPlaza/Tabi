import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Intro3 extends StatelessWidget {
  const Intro3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: RadialGradient(
            center: Alignment(0, -0.3),
            radius: 1.2,
            colors: [
              Colors.white,
              Color(0xFF88AAE0),
            ],
          ),
        ),
        child: Stack(
          children: [
            Positioned(
              top: 120,
              right: 60,
              child: Container(
                width: 140,
                height: 140,
                decoration: const BoxDecoration(
                  color: Color(0xFF6FA0C8),
                  shape: BoxShape.circle,
                ),
              ),
            ),
            Positioned(
              top: 300,
              left: 40,
              child: Container(
                width: 110,
                height: 110,
                decoration: const BoxDecoration(
                  color: Color(0xFF0F8FA4),
                  shape: BoxShape.circle,
                ),
              ),
            ),
            SafeArea(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Column(
                  children: [
                    const SizedBox(height: 40),

                    // Center image
                    Image.asset(
                      "assets/images/calls.png",
                      height: 360,
                    ),

                    const SizedBox(height: 20),

                    Text(
                      "Share Your Moments",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.shrikhand(
                        fontSize: 34,
                        color: const Color(0xFF1B2A6B),
                      ),
                    ),

                    const SizedBox(height: 15),

                    Text(
                      "Send photos, emojis, and voice messages to express yourself.",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.fredoka(
                        fontSize: 16,
                        color: Colors.grey[700],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
