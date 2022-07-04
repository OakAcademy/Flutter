import 'package:flutter/material.dart';

class CallPage extends StatelessWidget {
  const CallPage({ Key? key }) : super(key: key);
     
  @override
  Widget build(BuildContext context) {
    return ListView.builder
    
    (key:PageStorageKey('callPageKey'),itemExtent: 200,itemBuilder: (context,index){
      return Material(
          child: Center(child: Text(index.toString(),
          style: TextStyle(fontSize: 48),),),
          color: index % 2  ==0 ?Colors.yellow.shade200 :Colors.green.shade200,

      );

    });
}}