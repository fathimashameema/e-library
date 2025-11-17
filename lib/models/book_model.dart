import 'dart:convert';

class Book {
  final String id;
  final String title;
  final String author;
  final String? description;
  final String? coverUrl;
  final DateTime? publishedDate;
  final int? pageCount;
  final String? language;
  final double rating;
  final String content;
  final List<String> tags;

  const Book({
    required this.content,
    required this.id,
    required this.title,
    required this.author,
    this.description,
    this.coverUrl,
    this.publishedDate,
    this.pageCount,
    this.language,
    this.rating = 0.0,
    this.tags = const [],
  });

  Book copyWith({
    String? id,
    String? title,
    String? author,
    String? description,
    String? coverUrl,
    DateTime? publishedDate,
    int? pageCount,
    String? language,
    double? rating,
    String? content,
    List<String>? tags,
  }) {
    return Book(
      content: content ?? this.content,
      id: id ?? this.id,
      title: title ?? this.title,
      author: author ?? this.author,
      description: description ?? this.description,
      coverUrl: coverUrl ?? this.coverUrl,
      publishedDate: publishedDate ?? this.publishedDate,
      pageCount: pageCount ?? this.pageCount,
      language: language ?? this.language,
      rating: rating ?? this.rating,
      tags: tags ?? List<String>.from(this.tags),
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'title': title,
      'author': author,
      'description': description,
      'coverUrl': coverUrl,
      'publishedDate': publishedDate?.toIso8601String(),
      'pageCount': pageCount,
      'language': language,
      'rating': rating,
      'content': content,
      'tags': tags,
    };
  }

  factory Book.fromMap(Map<String, dynamic> map) {
    return Book(
      id: map['id'] as String,
      title: map['title'] as String,
      author: map['author'] as String,

      description: map['description'] as String?,
      coverUrl: map['coverUrl'] as String?,
      publishedDate:
          map['publishedDate'] != null
              ? DateTime.parse(map['publishedDate'] as String)
              : null,
      pageCount:
          map['pageCount'] != null ? (map['pageCount'] as num).toInt() : null,
      language: map['language'] as String?,
      rating: map['rating'] != null ? (map['rating'] as num).toDouble() : 0.0,
      content: map['content'] as String,
      tags:
          map['tags'] != null
              ? List<String>.from(
                (map['tags'] as List).map((e) => e.toString()),
              )
              : <String>[],
    );
  }

  String toJson() => json.encode(toMap());

  factory Book.fromJson(String source) =>
      Book.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Book(id: $id, title: $title, author: $author,content:$content )';
  }
}
