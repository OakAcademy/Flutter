import 'package:flutter/material.dart';
import 'package:date_format/date_format.dart';

class DateTimePicker extends StatelessWidget {
  const DateTimePicker({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    DateTime currentDate=DateTime.now();
    TimeOfDay currentHour=TimeOfDay.now();
    return Scaffold(
      appBar: AppBar(
        title: Text('Date and Time Picker'),
      ),
      body:Center
      (child: Column(children: [
        ElevatedButton(
        onPressed: (){
          showDatePicker(context: context, 
          initialDate: currentDate,
           firstDate: DateTime(2021), 
           lastDate: DateTime(2023),).then((selectedDate){
            
             debugPrint(selectedDate!.toString());
             debugPrint(selectedDate.toUtc().toString());
             debugPrint(selectedDate.toIso8601String());
             var newDate=DateTime.parse(selectedDate.toUtc().toString());
             debugPrint(newDate.toIso8601String());
             debugPrint(formatDate(selectedDate, [yy, '-', M, '-', d]));
             debugPrint(formatDate(selectedDate, [dd, '-', M, '-', yy]));
           
             
             
           }
           );

        },
        child:Text('Date Selection',style:TextStyle(fontSize: 24)),
        style: ElevatedButton.styleFrom(primary: Colors.purple.shade400),),

        ElevatedButton(
        onPressed: (){
          showTimePicker(context: context,
           initialTime: currentHour).then((selectedTime) {
             debugPrint(selectedTime.toString());
             debugPrint(selectedTime!.hour.toString());
             debugPrint(selectedTime.minute.toString());
           });

        },
        child:Text('Time Selection',style:TextStyle(fontSize: 24)),
        style: ElevatedButton.styleFrom(primary: Colors.pink.shade300),),
      ],)
      ,)
    );
  }
}