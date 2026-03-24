import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:messengging_app/INTROPAGE/first_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Timer(const Duration(seconds: 2), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => FirstPage()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
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
        child: Center(
          child: ShaderMask(
            shaderCallback: (bounds) =>  LinearGradient(
              colors: [
                Color(0xFF6A7BFF),
                Color(0xFF2F3FAE),
              ],
            ).createShader(bounds),
            child: Text(
              "TABi",
              style: GoogleFonts.shrikhand(
                fontSize: 60,
                fontWeight: FontWeight.bold,
                color: Colors.white,
                letterSpacing: 5,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
