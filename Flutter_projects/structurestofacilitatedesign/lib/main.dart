import 'package:flutter/material.dart';

import 'usingBottomNavigation.dart';
import 'usingGoogleFont.dart';
import 'usingdrawerinkwell.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        //fontFamily:'KdamThmor',
       
        primarySwatch: Colors.blue,
      ),
      home:  UsingBottomNavigation(),
    );
  }
}

