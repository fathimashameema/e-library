import 'package:flutter/material.dart';
import 'package:ohara/data/dummy_data.dart';
import 'package:ohara/models/book_model.dart';
import 'package:ohara/screens/book_contents.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key, required this.onToggleFav});
  final void Function(Book book) onToggleFav;

  @override
  Widget build(BuildContext context) {
    final randomFiveBooks = (List.of(books)..shuffle()).take(5).toList();

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20, 10, 10, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'For you',
              style: TextStyle(
                color: const Color.fromARGB(255, 58, 148, 61),
                fontSize: 25,
                fontWeight: FontWeight.w500,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: SizedBox(
                height: 300,
                child: CarouselView(
                  onTap: (value) {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder:
                            (ctx) => BookContents(
                              book: randomFiveBooks[value],
                              onToggleFav: onToggleFav,
                            ),
                      ),
                    );
                  },
                  itemExtent: 250,
                  children:
                      randomFiveBooks.map((book) {
                        return Container(
                          width: 200,
                          margin: const EdgeInsets.symmetric(horizontal: 8),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            image:
                                book.coverUrl != null
                                    ? DecorationImage(
                                      image: NetworkImage(book.coverUrl!),
                                      fit: BoxFit.cover,
                                    )
                                    : null,
                            color: Colors.grey[300],
                          ),
                          child: Align(
                            alignment: Alignment.bottomCenter,
                            child: Container(
                              width: double.infinity,
                              padding: const EdgeInsets.all(10),
                              color: Colors.black54,
                              child: Text(
                                book.title,
                                textAlign: TextAlign.center,
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ),
                        );
                      }).toList(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
