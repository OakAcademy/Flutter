import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({ Key? key }) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
   int _count=0;

  @override
  Widget build(BuildContext context) {
   // debugPrint('MyHomePage build worked');

    return Scaffold(
      
      appBar: AppBar(title: Text('Basic Widget AppBar'),),
      body: Center(
             child: Column(
               mainAxisAlignment: MainAxisAlignment.center,
               children: [
              Text('Counter Worked',style: TextStyle(fontSize: 30),),
              Text(_count.toString(),
              //style: TextStyle(fontSize: 30, fontWeight:FontWeight.bold)
              style: Theme.of(context).textTheme.headline2,
              )
                     ],),
           ),
           floatingActionButton: FloatingActionButton(onPressed: (){
             debugPrint('Button clicked and counter is $_count');
             increaseCount();
           },
           child: Icon(Icons.add),),
    );
  }

  void increaseCount() {
    
    setState(() {
      _count++;
    });
    
  }
} 
 



