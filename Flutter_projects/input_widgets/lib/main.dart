import 'package:flutter/material.dart';



import 'dateTimePicker.dart';
import 'otherFormWidgets.dart';
import 'stepperWidget.dart';
import 'todo_list.dart';
import 'usingFormFields.dart';

import 'usingGlabalKey.dart';
import 'usingTextField.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Input Widgets',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: ToDoList(),
    );
  }
}

