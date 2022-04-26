import 'package:book_list/route_generator.dart';
import 'package:flutter/material.dart';

import 'book_list.dart';

void main(){
    runApp(MyApp());
}
  

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      //home:BookList(),
      onGenerateRoute: RouteGenerator.routeGenerator,
      
    );
  }
}