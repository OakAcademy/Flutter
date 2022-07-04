import 'package:flutter/material.dart';

class CameraPage extends StatelessWidget {
  const CameraPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red.shade400,
      child: Center(
        child: Text('Camera Page',
        style: TextStyle(fontSize: 30),),),
      
    );
  }
}