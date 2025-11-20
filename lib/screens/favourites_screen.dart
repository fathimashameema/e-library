import 'package:flutter/material.dart';
import 'package:ohara/models/book_model.dart';
import 'package:ohara/screens/book_contents.dart';
import 'package:ohara/widgets/book_card.dart';

class FavouritesScreen extends StatelessWidget {
  final List<Book> books;
  final void Function(Book book) onToggleFav;

  const FavouritesScreen({
    super.key,
    required this.books,
    required this.onToggleFav,
  });

  @override
  Widget build(BuildContext context) {
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
                          builder:
                              (ctx) => BookContents(
                                book: book,
                                onToggleFav: onToggleFav,
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
