import 'dart:io';

class Book {
  final String title;
  final String author;
  final String isbn;
  final int year;

  Book (this.title, this.author, this.isbn, this.year);

  @override
  bool operator == (Object other) {
    if (identical(this, other)) return true;
    return other is Book && other.isbn == isbn;
  }

  @override
  int get hashCode => isbn.hashCode;

  @override
  String toString() => 'Book: $title by $author ($year) [ISBN: $isbn]';

}

void main() {
  final book1 = Book('Dart Basics', 'Ivan Petrov', '123-456', 2023);
  final book2 = Book('Dart Advanced', 'Ivan Petrov', '123-456', 2024);
  final book3 = Book('Flutter Guide', 'Elena Sidorova', '789-012', 2023);

  print(book1 == book2); // true (одинаковый ISBN)
  print(book1 == book3); // false

  final booksSet = {book1, book2, book3};
  print(booksSet.length); // 2 (book1 и book2 считаются одинаковыми)
}