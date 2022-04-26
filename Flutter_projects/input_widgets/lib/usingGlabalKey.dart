import 'package:flutter/material.dart';

class UsingGlobalKey extends StatelessWidget {
   UsingGlobalKey({ Key? key }) : super(key: key);
   final counterKey=GlobalKey<_CounterWidgetState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Using Global Key'),),
      body:Center(child:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
              Text('Button is Clicked',style: TextStyle(fontSize: 30),),
              CounterWidget(key:counterKey),
              //Text('0',style: TextStyle(fontSize: 36,fontWeight: FontWeight.bold),),
            
        ],
      ) ,),
      floatingActionButton: FloatingActionButton(
        onPressed:(){
          counterKey.currentState!.increase();
        } ,
        child: Icon(Icons.add),),
    );
  }
}

class CounterWidget extends StatefulWidget {
  const CounterWidget({ Key? key }) : super(key: key);

  @override
  State<CounterWidget> createState() => _CounterWidgetState();
}

class _CounterWidgetState extends State<CounterWidget> {
  int counter=0;
  void increase(){
    setState(() {
      counter++;
    });
    
  }
  @override
  Widget build(BuildContext context) {
    return Text(counter.toString(),
    style: TextStyle(fontSize: 36,fontWeight: FontWeight.bold),);
  }
}