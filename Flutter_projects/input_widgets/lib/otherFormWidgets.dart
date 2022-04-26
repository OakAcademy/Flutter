import 'package:flutter/material.dart';

class OtherFormWidgets extends StatefulWidget {
  const OtherFormWidgets({ Key? key }) : super(key: key);
    
  @override
  State<OtherFormWidgets> createState() => _OtherFormWidgetsState();
}

class _OtherFormWidgetsState extends State<OtherFormWidgets> {
  bool checkBoxState=false;
  String day='';
  bool switchState=false;
  double sliderValue=10;
  String dropdownValue='Monday';
  List<String> days=['Monday','Tuesday','Wednesday','Thursday'];
  //String selectedDay='Monday';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Other Form Widget'),),
      body:ListView(
        children: [
          CheckboxListTile(
              title: Text('Title'),
              subtitle:Text('Subtitle'),
              activeColor: Colors.pink,
              selected: true,
                  value:checkBoxState , 
                  onChanged:(selected){
                    setState(() {
                      checkBoxState=selected!;
                    });
                  } ),
          
          RadioListTile<String>(
            title:Text('Monday'),
            subtitle: Text('Monday'),
            value: 'Monday',

            groupValue: day, 
            onChanged: (value){
              setState(() {
                day=value!;
              });
            }),
            RadioListTile<String>(
             title:Text('Tuesday'),
             subtitle: Text('Tuesday'),
            value: 'Tuesday', 
            groupValue: day, 
            onChanged: (value){
              setState(() {
                day=value!;
              });
              
            }),
            RadioListTile<String>(
            title:Text('Wednesday'),
            subtitle: Text('Wednesday'),
            secondary: Icon(Icons.grade),
            value: 'Wednesday', 
            groupValue:day, 
            onChanged: (value){
              setState(() {
                day=value!;
              });
            }),

            SwitchListTile(
              title: Text('Switch Title'),
              value: switchState, 
            onChanged: (value){
              setState(() {
                switchState=value;
              });
            }),
           
           
            Slider(

             value: sliderValue,
               onChanged: (value){
                 setState(() {
                    sliderValue=value;
                 });
                  
              },
               min:0,
              max:50,
              divisions: 10,
              label:sliderValue.toString(), ),
            
              Padding(
              padding: const EdgeInsets.all(20),
              child: DropdownButton<String>(
                hint:Text(dropdownValue),
                items: [
                  DropdownMenuItem(child: Text('Monday'),value:'Monday'),
                  DropdownMenuItem(child: Text('Tuesday'),value:'Tuesday'),
                  DropdownMenuItem(child: Text('Wednesday'),value:'Wednesday'),
                  DropdownMenuItem(child: Text('Thursday'),value:'Thursday'),
                ], 
                onChanged: (selected){
                  setState(() {
                    dropdownValue=selected!;
                  });
                }),
            ), 
 
             /* DropdownButton<String>(
               hint:Text(dropdownValue),
              items: days.map((String currentDay) => 
              DropdownMenuItem(child: Text(currentDay),value:currentDay),
              ).toList(),

             onChanged: (selected){
               setState(() {
                 dropdownValue=selected!;
               });
                 
               
               
             })  */
        ]
        ,) ,
      
    );
  }
}