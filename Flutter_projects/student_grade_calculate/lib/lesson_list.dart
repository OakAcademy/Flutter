import 'package:flutter/material.dart';
import 'package:student_grade_calculate/constants.dart';
import 'package:student_grade_calculate/data.dart';
import 'package:student_grade_calculate/model/lesson.dart';

class LessonList extends StatelessWidget {
  final Function onDismiss;
  const LessonList({required this.onDismiss, Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Lesson> allLessons=DataHelper.allAddedLessons;
    return allLessons.length>0 ? ListView.builder(
      itemCount:allLessons.length,
      itemBuilder: (context,index){
        return Dismissible(
          key:UniqueKey(),
          direction: DismissDirection.endToStart,
          onDismissed: (value){
            onDismiss(index);
          },
          child: Padding(
            padding: const EdgeInsets.all(3.0),
            child: Card(child: 
            ListTile(
              title:Text(allLessons[index].name),
              leading: CircleAvatar(
              child: Text(DataHelper.calculateAverage().toStringAsFixed(2)),
              backgroundColor: Constants.mainColor,),
              subtitle: Text('Grade Value:${allLessons[index].letterGrade} , Credit Value:${allLessons[index].credit} '),),
              ),
          ),
        );

    }):Container(child: 
    Center(child: Text('Please enter a Lesson',
    style: Constants.textStyle,)),);
  }
}



/*  class LessonList extends StatefulWidget {
 
  const LessonList({ Key? key }) : super(key: key);

  @override
  State<LessonList> createState() => _LessonListState();
}

class _LessonListState extends State<LessonList> { 
  @override
  Widget build(BuildContext context) {
    List<Lesson> allLessons=DataHelper.allAddedLessons;
    return allLessons.length>0 ? ListView.builder(
      itemCount:allLessons.length,
      itemBuilder: (context,index){
        return Dismissible(
          key:UniqueKey(),
          direction: DismissDirection.endToStart,
          onDismissed: (value){
            

             DataHelper.allAddedLessons.removeAt(index);
            setState(() {
              
            }); 
          },
          child: Padding(
            padding: const EdgeInsets.all(3.0),
            child: Card(child: 
            ListTile(
              title:Text(allLessons[index].name),
              leading: CircleAvatar(
              child: Text(DataHelper.calculateAverage().toStringAsFixed(2)),
              backgroundColor: Constants.mainColor,),
              subtitle: Text('Grade Value:${allLessons[index].letterGrade} , Credit Value:${allLessons[index].credit} '),),
              ),
          ),
        );

    }):Container(child: 
    Center(child: Text('Please enter a Lesson',
    style: Constants.textStyle,)),);
  }
} */