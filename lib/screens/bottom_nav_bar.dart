import 'package:flutter/material.dart';
import 'package:ohara/screens/books_screen.dart';
import 'package:ohara/screens/category_screen.dart';
import 'package:ohara/screens/home_screen.dart';
import 'package:ohara/widgets/custom_bottom_nav_bar.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int currentIndex = 0;
  void onSelect(int value) {
    setState(() {
      currentIndex = value;
    });
  }

  final screens = [
    HomeScreen(),
    CategoryScreen(),
    BooksScreen(title: '', books: []),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: CustomBottomNavBar(
        currentIndex: currentIndex,
        onSelect: onSelect,
      ),
    );
  }
}
