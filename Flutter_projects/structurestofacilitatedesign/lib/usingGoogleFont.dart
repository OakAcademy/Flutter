import 'dart:ui';

import 'package:flutter/material.dart';

class UsingGoogleFont extends StatelessWidget {
  const UsingGoogleFont({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Using Google Font'),),
      body:Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Not Google Font',
              style:TextStyle(fontSize: 30,)),
              
             Text('Using Custom Font',
              style:TextStyle(fontSize: 30,
              fontFamily:'KdamThmor' ) ,),
              Text('Using Roboto Font',
              style:TextStyle(fontSize: 30,
              fontFamily:'Roboto',
              fontWeight:FontWeight.bold ) ,),
          
            ],
          ),
        ),)
    );
  }
}