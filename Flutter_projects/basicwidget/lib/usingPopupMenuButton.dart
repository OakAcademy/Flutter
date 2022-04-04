
import 'package:flutter/material.dart';

class UsingPopupMenuButton extends StatefulWidget {
  const UsingPopupMenuButton({ Key? key }) : super(key: key);

  @override
  State<UsingPopupMenuButton> createState() => _UsingPopupMenuButtonState();
}

class _UsingPopupMenuButtonState extends State<UsingPopupMenuButton> {
  String selectedValue='';
  List<String> numbers=['One','Two','Three','Four'];
  @override
  Widget build(BuildContext context) {
    return Center(
      child: PopupMenuButton<String>(
        onSelected: (String number){
            setState(() {
              selectedValue=number;
            });
            
        },
        //icon:Icon(Icons.arrow_back),
        //child: Text(selectedValue),
        itemBuilder: (BuildContext context){
          return numbers.map((String number) => PopupMenuItem
          (child: Text(number),
          value:number),).toList();
          /* <PopupMenuEntry<String>>[
            PopupMenuItem(child: Text('One'),value:'One'),
            PopupMenuItem(child: Text('Two'),value:'Two'),
            PopupMenuItem(child: Text('Three'),value:'Three'),
            PopupMenuItem(child: Text('Four'),value:'Four'),
          ]; */
        },
      ),
      
    );
  }
}