import 'package:flutter/material.dart';
import 'package:student_grade_calculate/data.dart';
import 'package:student_grade_calculate/model/lesson.dart';
import 'package:student_grade_calculate/showAverage.dart';

import 'constants.dart';
import 'data.dart';
import 'lesson_list.dart';
//import 'model/lesson.dart';

class MainPage extends StatefulWidget {
  const MainPage({ Key? key }) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
 
   double selectedValue=3;
   double selectedCredit=1;
   String? incomingLessonName='';
   var formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(Constants.title,style: Constants.textStyle,),
      ),
      body:Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(children: [
             Expanded(
               flex:2,
               child: Container(
                 child: createForm(),
               // color:Colors.pink.shade200
                ),
             ),
             Expanded(
               flex:1,
               child: ShowAvrage(average: DataHelper.calculateAverage(),
               numberofLesson:DataHelper.allAddedLessons.length,)
             ),

          ],),
       
        Expanded(
          child: LessonList(
            onDismiss: (index){
             DataHelper.allAddedLessons.removeAt(index);
             setState(() {
               
             });
             // print('Deleted element is $index');
            },
          ),
        )

      ],),
      
    );
  }

  Widget createForm() {
    return Form(
      key: formKey,
      child: Column(
        
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8),
            child:  createTextField()),
            SizedBox(height:7),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Expanded(
              child: Padding(padding: EdgeInsets.symmetric(horizontal: 10),
              child: createLetterGrade(),),
            ),
            Expanded(
              child: Padding(padding: EdgeInsets.symmetric(horizontal: 10),
              child: createCredits(),),
            ),
    
            IconButton(
              onPressed: (){
                addLessonandCalculate();
                /*  if(formKey.currentState!.validate()){
                      formKey.currentState!.save();
                      var addLeson=Lesson(name: incomingLessonName!, 
                      letterGrade: selectedValue, 
                      credit: selectedCredit);
                      print(addLeson);

              } */ } ,      
               icon: Icon(Icons.arrow_forward,
                        color: Constants.mainColor,
                        size: 50,))

        ],)
      ],),);
  }

  Widget createTextField() {
    return TextFormField(
        onSaved: (value) {
        incomingLessonName = value!;
      },
      validator: (value) {
        if (value!.length <= 0) {
          return 'Please enter a lesson name';
        } else
          return null;
      },
      decoration: InputDecoration(
        border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(20), ),
        hintText: ('Lesson'),
        filled: true,
        fillColor: Constants.mainColor.shade100.withOpacity(0.3)

        
      ),
    );
  }

   createLetterGrade() 
    {
      return Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
          color: Constants.mainColor.shade100.withOpacity(0.3),
          borderRadius: Constants.radius,
         ),
           child: DropdownButton<double>(
            value: selectedValue ,
            onChanged: (value){
              setState(() {
              selectedValue=value!;
            });
          },
          items:DataHelper.allLessonsLetter(),
          /*  [
            DropdownMenuItem(child: Text('AA'),value:4),
            DropdownMenuItem(child: Text('BA'),value:3.5),
            DropdownMenuItem(child: Text('BB'),value:3),
            DropdownMenuItem(child: Text('BC'),value:2.5),

        ], */
        ),
               
       
      );
  }

  createCredits() 
    {
      return Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
          color: Constants.mainColor.shade100.withOpacity(0.3),
          borderRadius: Constants.radius,
         ),
           child: DropdownButton<double>(
            value: selectedCredit ,
            onChanged: (value){
              setState(() {
              selectedCredit=value!;
            });
          },
          items:DataHelper.allCreditsList(),
        ),
               
       
      );
  }

  addLessonandCalculate() {
    
      if(formKey.currentState!.validate()){
      formKey.currentState!.save();
      var addLeson=Lesson(name: incomingLessonName!, 
      letterGrade: selectedValue, 
      credit: selectedCredit);
      DataHelper.addLesson(addLeson);
      DataHelper.calculateAverage;

      setState(() {
        
      });
       /* print(DataHelper.allAddedLessons);
      print(DataHelper.calculateAverage()); */
    }    
  }

    
}
