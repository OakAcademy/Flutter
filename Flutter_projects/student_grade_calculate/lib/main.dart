import 'package:flutter/material.dart';

import 'constants.dart';
import 'main_page.dart';

void main(){
  runApp(MyApp());
}



class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Student Grade Calculate',
      theme:ThemeData( 
        primarySwatch: Constants.mainColor,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ) ,
      home:MainPage(),
    
      
    );
  }
}