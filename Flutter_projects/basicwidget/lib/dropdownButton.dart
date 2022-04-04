import 'package:flutter/material.dart';

class DropdownButtonLesson extends StatefulWidget {
  const DropdownButtonLesson({ Key? key }) : super(key: key);
   
  @override
  State<DropdownButtonLesson> createState() => _DropdownButtonLessonState();
}

class _DropdownButtonLessonState extends State<DropdownButtonLesson> {
  
  @override
  Widget build(BuildContext context) {
    String? chosenValue=null;
    List<String> numbers=['One','Two','Three','Four','Five','Six','Seven']; 
    return Center(
      child: DropdownButton<String> (
        hint:Text('Choose'),
        icon:Icon(Icons.arrow_circle_down,
        size: 36,
        color: Colors.purple,) ,
        style: TextStyle(color: Colors.purple,
        fontSize: 36),
        
       /*  items: [
        DropdownMenuItem(child: Text('One'),value:('1'),),
        DropdownMenuItem(child: Text('Two'),value:('2'),),
        DropdownMenuItem(child: Text('Three'),value:('3'),),
        DropdownMenuItem(child: Text('Four'),value:('4'),),
      ], */
      items: numbers.map((String currentNumber) => DropdownMenuItem(
        child: Text(currentNumber),
        value:currentNumber
        ),
        ).toList(),
      value:chosenValue,
      onChanged:(String? newValue) {
        setState(() {
          
        });
        chosenValue=newValue!;
      },
        )
    );
  }
}