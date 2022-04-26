import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:navigation_operations/bookDetail.dart';

import 'bookList.dart';
import 'firstPage.dart';
import 'mainpage.dart';
import 'secondPage.dart';
import 'thirdPage.dart';


class GenerateRoute{
  static Route<dynamic>? generateRoute(RouteSettings settings){

     Route<dynamic> createRoute (Widget pagetoGo,RouteSettings settings){
         if(defaultTargetPlatform==TargetPlatform.iOS){ 
        return CupertinoPageRoute(
          settings:settings,
          builder: (context)=>pagetoGo);
      }else if(defaultTargetPlatform==TargetPlatform.android){
        return MaterialPageRoute(
          settings:settings,
          builder: (context)=>pagetoGo);
      }
      else
      return CupertinoPageRoute(
        settings:settings,
        builder: (context)=>pagetoGo);

      }

    switch(settings.name){

      case('/'):
      return createRoute(MainPage(),settings);
      case('/firstPage'):
      return createRoute(FirstPage(),settings);

      case('/thirdPage'):
      return createRoute(ThirdPage(),settings);
        
       case('/secondPage'):
      return createRoute(SecondPage(),settings);

      case('/bookDetail'):
        var selectedBook= settings.arguments as Book;
      return createRoute(BookDetail(selectedBook: selectedBook),settings);

      case('/BookList'):
      print(settings.name);
      print(settings.arguments);
      return createRoute(BookList(),settings);
        
       
       

      default:
      return MaterialPageRoute(builder:(context)=>Scaffold
      (appBar: AppBar(title:Text('Error Page'),),
       body:Center(child: Text('404',style: TextStyle(fontSize: 36),),))
       );

      
      
    }

  }

}