import 'package:flutter/material.dart';
import 'package:messengging_app/widgets/SlaphScreen/splash_screen.dart';
//import 'package:messengging_app/widgets/chat_screen.dart';

//import 'package:plaza/NavBar/buttom_nav.dart';

  void main() {
    runApp(const MyApp());
  }

  class MyApp extends StatelessWidget {
    const MyApp({super.key});

    @override
    Widget build(BuildContext context) {
      return MaterialApp(  
        debugShowCheckedModeBanner: false,
        home:  SplashScreen(),
      );
    }
  }

