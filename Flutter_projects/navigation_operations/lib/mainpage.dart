import 'package:flutter/material.dart';

import 'firstPage.dart';
import 'secondPage.dart';

class MainPage extends StatelessWidget {
  const MainPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Main Page'),
        backgroundColor: Colors.purple,
      ),
      body: Center(
        child: Column(children: [
          ElevatedButton(onPressed: (){
            Navigator.push<int>(context, 
           MaterialPageRoute
           (builder:(context)=>FirstPage())).
           then((int? incomingNumber) => debugPrint(' Incoming number: $incomingNumber'));
            //Navigator.of(context).push(route);
          },
           child: Text('First Page',style: TextStyle(fontSize: 36),),
           style: ElevatedButton.styleFrom(primary: Colors.green.shade300),),

          ElevatedButton(onPressed: (){
            Navigator.of(context).maybePop();
          }, 
           child: Text('Using MaybePop',style: TextStyle(fontSize: 36),),
           style: ElevatedButton.styleFrom(primary: Colors.purple.shade300),),

           ElevatedButton(onPressed: (){
             if(Navigator.of(context).canPop()){
               print('Yes return');
             }
             else{
               print('No return');
             }

            
          }, 
           child: Text('Using canPop',style: TextStyle(fontSize: 36),),
           style: ElevatedButton.styleFrom(primary: Colors.purple.shade300),),

           ElevatedButton(onPressed: (){
            Navigator.of(context).pushReplacement(
              MaterialPageRoute(builder: (context) =>SecondPage())
            );
          }, 
           child: Text('Using PusReplacement',style: TextStyle(fontSize: 36),),
           style: ElevatedButton.styleFrom(primary: Colors.purple.shade300),),

           ElevatedButton(onPressed: (){
            Navigator.of(context).pushNamed('/firstPage');
          }, 
           child: Text('First Page with routes',style: TextStyle(fontSize: 24),),
           style: ElevatedButton.styleFrom(primary: Colors.green.shade300),),
            ElevatedButton(onPressed: (){
            Navigator.of(context).pushNamed('/secondPage');
          }, 
           child: Text('Second Page onGenarate',style: TextStyle(fontSize: 24),),
           style: ElevatedButton.styleFrom(primary: Colors.red.shade300),),

           ElevatedButton(onPressed: (){
             Navigator.of(context).pushNamed('/BookList',arguments:10);
          }, 
           child: Text('Book List onGenarate',style: TextStyle(fontSize: 24),),
           style: ElevatedButton.styleFrom(primary: Colors.blue.shade300),),
        ],),
      )
      
    );
  }
}