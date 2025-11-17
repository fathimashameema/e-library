import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ohara/widgets/category_grid.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenMode = MediaQuery.of(context).platformBrightness;
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        title: RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: 'O',
                style: GoogleFonts.merriweatherSans(
                  color: const Color.fromARGB(255, 58, 148, 61),
                  fontSize: 80,
                ),
              ),
              TextSpan(
                text: 'hara',
                style: TextStyle(
                  fontSize: 40,

                  color:
                      screenMode == Brightness.dark
                          ? Colors.white
                          : Colors.black,
                ),
              ),
            ],
          ),
        ),
      ),
      body: Center(child: Text('Home screen')),
    );
  }
}
