import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Intro2 extends StatelessWidget {
  const Intro2({super.key});

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
                    Image.asset(
                      "assets/images/phone.png",
                      height: 350,
                    ),
                    const SizedBox(height: 20),
                    Text(
                      "Easy chat with your friends",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.shrikhand(
                        fontSize: 34,
                        color: const Color(0xFF1B2A6B),
                      ),
                    ),
                    const SizedBox(height: 15),
                    Text(
                      "Send and receive messages instantly with TABi.",
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
