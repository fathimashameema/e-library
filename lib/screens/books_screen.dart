import 'package:flutter/material.dart';
import 'package:ohara/models/book_model.dart';
import 'package:ohara/screens/book_contents.dart';
import 'package:ohara/widgets/book_card.dart';
import 'package:ohara/widgets/custom_sub_appbar.dart';

class BooksScreen extends StatelessWidget {
  final String title;
  final List<Book> books;
  const BooksScreen({super.key, required this.title, required this.books});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomSubAppbar(title: title),
      body:
          books.isEmpty
              ? Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30.0),
                  child: Text(
                    textAlign: TextAlign.center,
                    'Ooops! No books are available for this category.\nTry selecting a different category',
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
                          builder: (ctx) => BookContents(book: book),
                        ),
                      );
                    },
                  );
                },
              ),
    );
  }
}
