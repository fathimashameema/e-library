import 'package:flutter/material.dart';

class CustomBottomNavBar extends StatelessWidget {
  final int currentIndex;
  final void Function(int value) onSelect;
  const CustomBottomNavBar({
    super.key,
    required this.currentIndex,
    required this.onSelect,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20.0, 0, 20, 20),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(25),
        child: Theme(
          data: Theme.of(context).copyWith(
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            hoverColor: Colors.transparent,
          ),
          child: BottomNavigationBar(
            showUnselectedLabels: false,
            selectedItemColor: const Color.fromARGB(255, 22, 51, 22),
            elevation: 5,
            backgroundColor: const Color.fromARGB(255, 58, 148, 61),
            currentIndex: currentIndex,
            onTap: onSelect,
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
              BottomNavigationBarItem(
                icon: Icon(Icons.library_books),
                label: 'Category',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.star),
                label: 'Favourites',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
