import 'dart:convert';

import 'package:flutter/material.dart';

class LocalJson extends StatefulWidget {
  const LocalJson({ Key? key }) : super(key: key);

  @override
  State<LocalJson> createState() => _LocalJsonState();
}

class _LocalJsonState extends State<LocalJson> {
  @override
  Widget build(BuildContext context) {
    ReadBooksJson();
    return Scaffold(
      appBar: AppBar(title: Text('Using Local Json'),),

      
    );
  }
  ReadBooksJson() async{
  String readData =await DefaultAssetBundle.of(context).
                        loadString('assets/data/books.json');
   var jsonData= jsonDecode(readData);
   List list=jsonData;
   debugPrint(list.toString());
  /*  debugPrint(readData);
   debugPrint('*****************');
   debugPrint(jsonData.toString());
 */
}
}

