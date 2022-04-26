import 'package:book_list/bookDetail.dart';
import 'package:book_list/book_list.dart';
import 'package:flutter/material.dart';

import 'modal/book.dart';

class RouteGenerator{
  static Route<dynamic>? routeGenerator(RouteSettings settings)
  {
        switch(settings.name){
          case('/'):
          return MaterialPageRoute(
            builder:(context)=>BookList());
          case('/bookDetail'):
          final selectedBook=settings.arguments as Book;
          return MaterialPageRoute(
            builder:(context)=>BookDetail(selectedBook: selectedBook,));

        }
  }
}