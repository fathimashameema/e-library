import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ohara/providers/app_state_providers.dart';
import 'package:ohara/screens/book_contents.dart';
import 'package:ohara/widgets/book_card.dart';

class FavouritesScreen extends ConsumerWidget {
  const FavouritesScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final books = ref.watch(favouriteBooksProvider);
    return Scaffold(
      // appBar: CustomSubAppbar(title: 'Favourites'),
      body:
          books.isEmpty
              ? Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30.0),
                  child: Text(
                    textAlign: TextAlign.center,
                    "Oh! You currently don't have any favourite books, select one!",
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              )
              : ListView.builder(
                itemCount: books.length,
                itemBuilder: (context, index) {
                  final book = books[index];
                  return BookCard(
                    book: book,
                    onSelect: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (ctx) => BookContents(
                            book: book,
                          ),
                        ),
                      );
                    },
                  );
                },
              ),
    );
  }
}
