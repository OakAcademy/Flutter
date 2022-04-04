import 'package:basicwidget/images_Assets.dart';
import 'package:basicwidget/myHomePage.dart';
import 'package:flutter/material.dart';

import 'buttonTypes.dart';
import 'dropdownButton.dart';
import 'usingPopupMenuButton.dart';
void main(){
runApp(MyApp(),
  /* MaterialApp(
  home: Scaffold(backgroundColor: Colors.red,),
), */
);
}

 class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //debugPrint('MyApp build worked');
    return MaterialApp(
      theme:ThemeData(
      outlinedButtonTheme: OutlinedButtonThemeData(style: 
      OutlinedButton.styleFrom(
        primary: Colors.green,
        shape: StadiumBorder(),
        side: BorderSide(color:Colors.green,width:3)
      )),
      primarySwatch: Colors.deepPurple,
      textTheme: TextTheme(
        headline2: TextStyle(
          color: Colors.pink,
          fontWeight: FontWeight.bold,
        ) )),
       home: Scaffold(
        appBar: AppBar(
          //title:Text('Image and Asset Lesson'),
          title:Text('Button Types'),
          actions: [UsingPopupMenuButton()],
        ),
        body:UsingPopupMenuButton(),
        ),
       
    );
  }
}



    