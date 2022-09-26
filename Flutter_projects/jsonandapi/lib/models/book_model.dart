// To parse this JSON data, do
//
//     final book = bookFromMap(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

Book bookFromMap(String str) => Book.fromMap(json.decode(str));

String bookToMap(Book data) => json.encode(data.toMap());

class Book {
    Book({
        required this.id,
        required this.bookName,
        required this.author,
        required this.year,
    });

    final int id;
    final String bookName;
    final String author;
    final int year;

    factory Book.fromMap(Map<String, dynamic> json) => Book(
        id: json["id"],
        bookName: json["book_name"],
        author: json["author"],
        year: json["year"],
    );

    Map<String, dynamic> toMap() => {
        "id": id,
        "book_name": bookName,
        "author": author,
        "year": year,
    };
}
