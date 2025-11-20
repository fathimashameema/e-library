import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  final void Function(String identifier) onSelectItem;
  const CustomDrawer({super.key, required this.onSelectItem});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 58, 148, 61),
            ),
            child: Row(
              children: [
                Icon(
                  Icons.menu_book_outlined,
                  size: 48,
                  color: const Color.fromARGB(255, 33, 84, 35),
                ),
                SizedBox(width: 20),
                Text(
                  'Shhh! Silnece.',
                  style: TextStyle(
                    color: const Color.fromARGB(255, 33, 84, 35),
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          ListTile(
            leading: Icon(Icons.library_books, size: 28),
            title: Text('Books', style: TextStyle(fontSize: 20)),
            onTap: () {
              onSelectItem('books');
            },
          ),
          // ListTile(
          //   leading: Icon(Icons.tune, size: 28),
          //   title: Text('Filter', style: TextStyle(fontSize: 20)),
          //   onTap: () {
          //     onSelectItem('filter');
          //   },
          // ),
        ],
      ),
    );
  }
}
