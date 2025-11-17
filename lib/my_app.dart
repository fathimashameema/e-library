import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ohara/screens/bottom_nav_bar.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      darkTheme: ThemeData.dark(),
      theme: ThemeData(
        textTheme: GoogleFonts.robotoTextTheme(),
        primaryColorDark: Colors.white,
        primaryColorLight: Colors.black,
      ),
      home: BottomNavBar(),
    );
  }
}
