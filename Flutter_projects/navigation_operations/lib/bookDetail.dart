import 'package:flutter/material.dart';

import 'bookList.dart';

class BookDetail extends StatelessWidget {
  final Book selectedBook;
  const BookDetail( {required this.selectedBook, Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text(' Book Detail Page') ,),
      body: Column(children: [
        Text(selectedBook.name),
        Text(selectedBook.name),
        Text(selectedBook.writer)
      ],)
      
    );
  }
}