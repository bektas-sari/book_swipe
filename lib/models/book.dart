class Book {
  final String title;
  final String author;
  final String publisher;
  final String year;
  final String isbn;

  Book({
    required this.title,
    required this.author,
    required this.publisher,
    required this.year,
    required this.isbn,
  });

  factory Book.fromJson(Map<String, dynamic> json) {
    return Book(
      title: json['title'] ?? '',
      author: json['author'] ?? '',
      publisher: json['publisher'] ?? '',
      year: json['year'] ?? '',
      isbn: json['isbn'] ?? '',
    );
  }
}
