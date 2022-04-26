import 'package:flutter/material.dart';

class ThirdPage extends StatelessWidget {
  const ThirdPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Third Page'),
        backgroundColor: Colors.pink,
      ),
      body: Center(child:Column(children: 
      [
        Text('Third Page',style: TextStyle(fontSize: 36),),
        ElevatedButton(onPressed: (){
          Navigator.of(context).
          popUntil((route) => route.isFirst);
          //route.settings.name=='/');
        }, 
        child:Text('PopUntil',style: TextStyle(fontSize: 36),)),

        ElevatedButton(onPressed: (){
          Navigator.of(context).pushNamedAndRemoveUntil('/firstPage', (route) => route.isFirst);
          
        }, 
        child:Text('PushRemoveUntil',style: TextStyle(fontSize: 36),),
         style: ElevatedButton.styleFrom(primary: Colors.green.shade300),)
        
        

      ],)
         
        ),

      
    );
  }
}