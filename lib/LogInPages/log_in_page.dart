import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
//import 'package:messengging_app/INTROPAGE/first_page.dart';
import 'package:messengging_app/LogInPages/sign_in.dart';
import 'package:messengging_app/widgets/NavBar/buttom_nav.dart';

class LogInPage extends StatelessWidget {
  const LogInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,

        /// Background Gradient
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

        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

               
                Text(
                  "TABi",
                  style: GoogleFonts.shrikhand(
                    fontSize: 48,
                    fontWeight: FontWeight.bold,
                    color: const Color(0xff2c2f73),
                  ),
                ),

                const SizedBox(height: 25),

             
                Text(
                  "create new account",
                  style: GoogleFonts.fredoka(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),

                const SizedBox(height: 30),

               
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "username",
                    style: GoogleFonts.fredoka(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),

                const SizedBox(height: 8),

               
                TextField(
                  decoration: InputDecoration(
                    hintText: "username",
                    filled: true,
                    fillColor: const Color(0xffb7cdd9),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),

                const SizedBox(height: 20),

              
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "password",
                    style: GoogleFonts.fredoka(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),

                const SizedBox(height: 8),

                
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: "password",
                    filled: true,
                    fillColor: const Color(0xffb7cdd9),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide.none,
                    ),
                    suffixIcon: const Icon(Icons.visibility_off),
                  ),
                ),

                const SizedBox(height: 10),

                
                Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    "forgot password",
                    style: GoogleFonts.fredoka(
                      fontSize: 12,
                      color: Colors.blueGrey,
                    ),
                  ),
                ),

                const SizedBox(height: 25),

                
                SizedBox(
                  width: 180,
                  height: 50,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xff6ea0c6),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    onPressed: () {
                          Navigator.push(
                     context,
                    MaterialPageRoute(
                    builder: (context) => SignInPage(),
                  ),
               );
                      
                    },
                    child: Text(
                      "SIGN-IN",
                      style: GoogleFonts.fredoka(
                        fontWeight: FontWeight.bold,
                        letterSpacing: 2,
                      ),
                    ),
                  ),
                ),

                const SizedBox(height: 20),

                
                SizedBox(
                  width: double.infinity,
                  height: 60,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xff6ea0c6),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40),
                      ),
                    ),
                    onPressed: () {
                        Navigator.push(
                     context,
                    MaterialPageRoute(
                    builder: (context) => ButtomNav(),
                  ),
               );
                     

                    },
                    child: Text(
                      "LOG-IN",
                      style: GoogleFonts.fredoka(
                        fontWeight: FontWeight.bold,
                        letterSpacing: 3,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}