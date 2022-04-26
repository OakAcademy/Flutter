import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Page'),
        backgroundColor: Colors.red,
      ),
      body: Center(child:Column(children: 
      [
        Text('Second Page',style: TextStyle(fontSize: 36),),
        ElevatedButton(onPressed: (){
          Navigator.of(context).pushNamed('/thirdPage');

        }, child:Text('Third Page',style: TextStyle(fontSize: 36),),
          style: ElevatedButton.styleFrom(primary: Colors.pink.shade300),) 
        

      ],)
         
        ),

      
    );
  }
}