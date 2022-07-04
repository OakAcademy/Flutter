import 'package:flutter/material.dart';

class MessagePage extends StatelessWidget {
  const MessagePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue.shade400,
      child: Center(
        child: Text('Message Page',
        style: TextStyle(fontSize: 30),),),
      
    );
  }
}