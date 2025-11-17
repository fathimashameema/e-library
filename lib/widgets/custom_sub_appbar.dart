import 'package:flutter/material.dart';

class CustomSubAppbar extends StatelessWidget implements PreferredSizeWidget {
  const CustomSubAppbar({super.key, required this.title});

  final String title;

  @override
  Size get preferredSize => const Size.fromHeight(100);

  @override
  Widget build(BuildContext context) {
    final screenMode = MediaQuery.of(context).platformBrightness;

    return AppBar(
      surfaceTintColor:
          screenMode == Brightness.dark ? Colors.black : Colors.white,
      toolbarHeight: 100,
      title: Text(
        title,
        style: TextStyle(
          color: const Color.fromARGB(255, 58, 148, 61),
          fontSize: 35,
        ),
      ),
    );
  }
}
