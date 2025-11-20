import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ohara/models/book_model.dart';

class BookContents extends StatelessWidget {
  final Book book;
  final void Function(Book book) onToggleFav;
  const BookContents({
    super.key,
    required this.book,
    required this.onToggleFav,
  });

  @override
  Widget build(BuildContext context) {
    final screenMode = MediaQuery.of(context).platformBrightness;
    final Color textColor =
        screenMode == Brightness.dark
            ? const Color.fromARGB(145, 255, 255, 255)
            : const Color.fromARGB(152, 0, 0, 0);
    return Scaffold(
      appBar: AppBar(
        title: Text(book.title),
        actions: [
          IconButton(
            onPressed: () {
              onToggleFav(book);
            },
            icon: Icon(Icons.star),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(25, 35, 25, 15),
            child: Column(
              children: [
                book.coverUrl != null
                    ? Image.network(book.coverUrl!)
                    : SizedBox.shrink(),
                SizedBox(height: 20),

                Text(
                  book.title,
                  style: TextStyle(
                    color: const Color.fromARGB(255, 58, 148, 61),
                    fontSize: 25,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  book.author,
                  style: TextStyle(
                    color: textColor,
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(height: 15),
                Container(
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    border: Border.all(color: textColor.withAlpha(75)),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.star, size: 20),
                          SizedBox(width: 5),
                          Text(
                            book.rating.toString(),
                            style: TextStyle(fontSize: 15),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 30,
                        child: VerticalDivider(color: textColor, thickness: 2),
                      ),
                      Text(
                        "${book.publishedDate!.year}-${book.publishedDate!.month}-${book.publishedDate!.day}",
                        style: TextStyle(
                          color: textColor,
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                book.description != null
                    ? Text(
                      '[ ${book.description!} ]',
                      style: TextStyle(color: textColor.withAlpha(190)),
                    )
                    : SizedBox.shrink(),
                SizedBox(height: 50),
                Text(book.content, style: GoogleFonts.openSans(fontSize: 16)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
