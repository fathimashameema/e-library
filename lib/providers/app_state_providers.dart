import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/legacy.dart';
import 'package:ohara/models/book_model.dart';

final bottomNavIndexProvider = StateProvider<int>((ref) => 0);

final favouriteBooksProvider =
    NotifierProvider<FavouriteBooksNotifier, List<Book>>(
  FavouriteBooksNotifier.new,
);

class FavouriteBooksNotifier extends Notifier<List<Book>> {
  @override
  List<Book> build() => [];

  bool toggle(Book book) {
    final exists = state.any((savedBook) => savedBook.id == book.id);
    if (exists) {
      state = state.where((savedBook) => savedBook.id != book.id).toList();
      return false;
    } else {
      state = [...state, book];
      return true;
    }
  }

  bool isFavourite(String bookId) =>
      state.any((savedBook) => savedBook.id == bookId);
}

