import 'package:flutter/material.dart';
import 'package:navigation_operations/firstPage.dart';
import 'package:navigation_operations/usingOnGenerateRoute.dart';

import 'mainpage.dart';
import 'secondPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      //home: MainPage(),
      /* routes: {
        '/firstPage':(context)=>FirstPage(),
        '/':(context)=>MainPage(),
        '/secondPage':(context)=>SecondPage(),
      },
      onUnknownRoute: (settings)=>MaterialPageRoute(builder: (context)=>
      Scaffold(appBar: AppBar(title:Text('Error Page'),),
              body:Center(child: Text('404',style: TextStyle(fontSize: 36),),))), */
        
      onGenerateRoute:GenerateRoute.generateRoute,
    );
  }
}