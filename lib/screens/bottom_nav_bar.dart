import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ohara/providers/app_state_providers.dart';
import 'package:ohara/screens/category_screen.dart';
import 'package:ohara/screens/favourites_screen.dart';
import 'package:ohara/screens/home_screen.dart';
import 'package:ohara/widgets/custom_bottom_nav_bar.dart';
import 'package:ohara/widgets/custom_drawer.dart';
import 'package:ohara/widgets/custom_sub_appbar.dart';
import 'package:ohara/widgets/main_app_bar.dart';

class BottomNavBar extends ConsumerWidget {
  const BottomNavBar({super.key});

  void setScreen(BuildContext context, String identifier) {
    if (identifier == 'filter') {
      return;
    }
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final screenMode = MediaQuery.of(context).platformBrightness;
    final currentIndex = ref.watch(bottomNavIndexProvider);

    final screens = [
      const HomeScreen(),
      const CategoryScreen(),
      const FavouritesScreen(),
    ];
    return Scaffold(
      appBar:
          currentIndex == 0
              ? MainAppBar(screenMode: screenMode)
              : CustomSubAppbar(
                title: currentIndex == 1 ? 'Category' : 'Favourites',
              ),
      drawer: CustomDrawer(
        onSelectItem: (identifier) => setScreen(context, identifier),
      ),
      body: screens[currentIndex],
      bottomNavigationBar: CustomBottomNavBar(
        currentIndex: currentIndex,
        onSelect: (value) =>
            ref.read(bottomNavIndexProvider.notifier).state = value,
      ),
    );
  }
}
