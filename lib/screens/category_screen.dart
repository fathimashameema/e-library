import 'package:flutter/material.dart';
import 'package:ohara/data/dummy_data.dart';
import 'package:ohara/models/book_model.dart';
import 'package:ohara/screens/books_screen.dart';
import 'package:ohara/widgets/category_grid.dart';

class CategoryScreen extends StatelessWidget {
  final void Function(Book book) onToggleFav;

  const CategoryScreen({super.key, required this.onToggleFav});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: CustomSubAppbar(title: 'Categories'),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: GridView.builder(
          itemCount: categories.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 25,
            crossAxisSpacing: 25,
            childAspectRatio: 0.85,
          ),
          itemBuilder: (context, index) {
            final category = categories[index];
            return CategoryGrid(
              onTap: () {
                final categoryBooks =
                    books
                        .where((book) => book.tags.contains(category.id))
                        .toList();
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder:
                        (ctx) => BooksScreen(
                          onToggleFav: onToggleFav,
                          title: category.name,
                          books: categoryBooks,
                        ),
                  ),
                );
              },
              icon: category.icon,
              title: category.name,
            );
          },
        ),
      ),
    );
  }
}
