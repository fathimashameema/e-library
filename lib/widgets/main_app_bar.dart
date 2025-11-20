import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MainAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MainAppBar({super.key, required this.screenMode});

  final Brightness screenMode;

  @override
  Widget build(BuildContext context) {
    return AppBar(
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
                    screenMode == Brightness.dark ? Colors.white : Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(100);
}