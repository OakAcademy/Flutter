
import 'package:flutter/material.dart';

class UsingStepperWidget extends StatefulWidget {
  const UsingStepperWidget({ Key? key }) : super(key: key);

  @override
  State<UsingStepperWidget> createState() => _UsingStepperWidgetState();
}

class _UsingStepperWidgetState extends State<UsingStepperWidget> {
  int activeStep=0;
  String username='', mail='',password='';
  List<Step> steps=[];
  bool error=false;
  
  var key0=GlobalKey<FormFieldState>();
  var key1=GlobalKey<FormFieldState>();
  var key2=GlobalKey<FormFieldState>();
  @override
  Widget build(BuildContext context) {
      steps=allSteps();
    return Scaffold(
      appBar: AppBar(
        title: Text('Using Stepper Widget'),),
      body: SingleChildScrollView(
        child:Stepper(
          onStepContinue: (){
            setState(() {

              continueControl();
             /* 
               if(activeStep<steps.length-1)
              {
              activeStep++;
              }  */

            });
          },
          onStepCancel: (){
            setState(() {
              if(activeStep>0){
              activeStep--;
            }else
            activeStep=0;
            });

            

          },
          currentStep: activeStep,
          /* onStepTapped:(selectedStep){
            setState(() {
            activeStep=selectedStep;
            });
          } , */
          steps: steps,) ,
          ),
    );
  }

  List<Step> allSteps() {
      List<Step> steps=[
            Step(
          title:Text('Username title'),
          subtitle: Text('Username subtitle'),
          state: setSteps(0),
          isActive: true,
          content:TextFormField(
            key:key0,
            validator: (incomingValue){
                if(incomingValue!.length<4){
                  return ('Please add at least 4 characters ');
                }
              },
            onSaved: (incomingValue){
                username=incomingValue!;
              },
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            labelText:('Username'),
            hintText: ('Username'),),
           ),
          ),
            Step(
              title:Text('Email title'),
              subtitle: Text('Email subtitle'),
              state: setSteps(1),
              isActive: true,
              content:TextFormField(
                key:key1,
              validator: (incomingValue){
                if(!incomingValue!.contains('@'))
                {
                  return ('Please add correct mail');
                }
              },
              onSaved: (incomingValue){
                mail=incomingValue!;
              },
              decoration: InputDecoration(
                 border: OutlineInputBorder(),
                  labelText:('Email'),
                  hintText: ('Email'),),
            
           ) ),
            Step(
            title:Text('Password title'),
            subtitle: Text('Password subtitle'),
            state: setSteps(2),
            isActive: true,
            content:TextFormField(
              key:key2,
              validator: (incomingValue){
                if(incomingValue!.length<6){
                  return ('Please add at least 6 characters ');
                }
              },
              onSaved: (incomingValue){
                password=incomingValue!;
              },
            decoration: InputDecoration(
               border: OutlineInputBorder(),
               labelText:('Password'),
              hintText: ('Password'),),
            
           ),
         )
      ];
      return steps;
  }
    StepState setSteps(int currentStep){
        
      if(activeStep == currentStep){
        if(error)
        {
          return StepState.error;
        }
        else 
          return StepState.editing;
       
        }
        else
          return StepState.indexed;
      
    }

  void continueControl() {
    switch(activeStep){
      case 0:
      if(key0.currentState!.validate())
      {
        key0.currentState!.save();
        error=false;
        activeStep=1;
      }
      else{
        error=true;
      }
      break;
      case 1:
      if(key1.currentState!.validate())
      {
        key1.currentState!.save();
        error=false;
        activeStep=2;
      }
      else{
        error=true;
      }
      break;
      case 2:
      if(key2.currentState!.validate())
      {
        key2.currentState!.save();
        error=false;
        activeStep=2;
      }
      else{
        error=true;
      }
      break;
    }
  }

  
 
}