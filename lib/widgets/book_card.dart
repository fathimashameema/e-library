import 'package:flutter/material.dart';
import 'package:ohara/models/book_model.dart';

class BookCard extends StatelessWidget {
  const BookCard({super.key, required this.book, required this.onSelect});

  final Book book;
  final void Function() onSelect;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
      child: GestureDetector(
        onTap: onSelect,
        child: Row(
          children: [
            SizedBox(
              height: 120,
              width: 80,
              child:
                  book.coverUrl != null
                      ? ClipRRect(
                        borderRadius: BorderRadius.circular(6),
                        child: Image.network(book.coverUrl!, fit: BoxFit.fill),
                      )
                      : Container(
                        alignment: Alignment.center,
                        color: Colors.grey[300],
                        child: Text(
                          book.title,
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 12),
                        ),
                      ),
            ),
            SizedBox(width: 20),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    softWrap: true,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                    book.title,
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                  ),
                  Text(book.author),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
