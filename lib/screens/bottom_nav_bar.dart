import 'package:flutter/material.dart';
import 'package:ohara/models/book_model.dart';
import 'package:ohara/screens/category_screen.dart';
import 'package:ohara/screens/favourites_screen.dart';
import 'package:ohara/screens/home_screen.dart';
import 'package:ohara/widgets/custom_bottom_nav_bar.dart';
import 'package:ohara/widgets/custom_drawer.dart';
import 'package:ohara/widgets/custom_sub_appbar.dart';
import 'package:ohara/widgets/main_app_bar.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  List<Book> favouriteBooks = [];

  void setScreen(String identifier) {
    if (identifier == 'filter') {
    } else {
      Navigator.of(context).pop();
    }
  }

  void showMessage(String content) {
    ScaffoldMessenger.of(context).clearSnackBars();
    ScaffoldMessenger.of(
      context,
    ).showSnackBar(SnackBar(content: Text(content)));
  }

  void addOrRemoveFavourites(Book book) {
    setState(() {
      if (!favouriteBooks.contains(book)) {
        favouriteBooks.add(book);
        showMessage('Book added to the favourites');
      } else {
        favouriteBooks.remove(book);
        showMessage('Book removed from favourites');
      }
    });
  }

  int currentIndex = 0;
  void onSelect(int value) {
    setState(() {
      currentIndex = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    final screenMode = MediaQuery.of(context).platformBrightness;

    final screens = [
      HomeScreen(onToggleFav: addOrRemoveFavourites),
      CategoryScreen(onToggleFav: addOrRemoveFavourites),
      FavouritesScreen(
        books: favouriteBooks,
        onToggleFav: addOrRemoveFavourites,
      ),
    ];
    return Scaffold(
      appBar:
          currentIndex == 0
              ? MainAppBar(screenMode: screenMode)
              : CustomSubAppbar(
                title: currentIndex == 1 ? 'Category' : 'Favourites',
              ),
      drawer: CustomDrawer(onSelectItem: setScreen),
      body: screens[currentIndex],
      bottomNavigationBar: CustomBottomNavBar(
        currentIndex: currentIndex,
        onSelect: onSelect,
      ),
    );
  }
}
