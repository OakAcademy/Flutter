import 'package:flutter/material.dart';
import 'package:email_validator/email_validator.dart';
class UsingFormField extends StatefulWidget {
  const UsingFormField({ Key? key }) : super(key: key);

  @override
  State<UsingFormField> createState() => _UsingFormFieldState();
}

class _UsingFormFieldState extends State<UsingFormField> {
  String? _username='';
  String? _email='';
  String? _password='';
  final _formKey=GlobalKey<FormState>();
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Form Operations'),),
        body:SingleChildScrollView(
        child:Padding(
          padding: const EdgeInsets.all(20),
          child: Form(
            key:_formKey,
            autovalidateMode: AutovalidateMode.always,
            child: Column(children: [
            TextFormField(              
              //initialValue: 'OAK OAK',
              decoration: InputDecoration(
                border:OutlineInputBorder(),
                labelText: 'Username',
                hintText: 'Username',
              ),
                onSaved: (value){
                  _username=value!;
                },
              validator:(value){
                  if(value!.length < 6){
                    return 'Username must be at least 6 characters';
                  }else
                  return null;
              }   
            ),
                SizedBox(
                height: 15,
              ),

              TextFormField(
              keyboardType: TextInputType.emailAddress,
              //initialValue: 'oak@gmail.com',
              decoration: InputDecoration(
                border:OutlineInputBorder(),
                labelText: 'Email',
                hintText: 'Email',
              ),
                onSaved: (value){
                  _email=value!;
                },
               validator:(value){
                  if(!EmailValidator.validate(value!)){
                    return 'Please enter a valid e-mail address';
                  }else
                  return null;
              }   
              ),

              SizedBox(
                height: 15,
              ),

              TextFormField(              
              //initialValue: '',
              decoration: InputDecoration(
                border:OutlineInputBorder(),
                labelText: 'Password',
                hintText: 'Password',
              ),
                onSaved: (value){
                  _password=value!;
                },
              validator:(value){
                  if(value!.length < 8){
                    return 'Password must be at least 8 characters';
                  }else
                  return null;
              }   
            ),

            SizedBox(
                height: 15,
              ),

              ElevatedButton(onPressed: (){
                bool _validate=_formKey.currentState!.validate();
                if(_validate){
                  _formKey.currentState!.save();
                  String result=
                'username:$_username\nemail:$_email\npassword:$_password';
                ScaffoldMessenger.of(context).showSnackBar
                (SnackBar(content: Text(result,
                style: TextStyle(fontSize: 20),)));
                }
                _formKey.currentState!.reset();
               
              }, 
              child: Text('Ok')),



            ]),)
       
        ),
        
        )

      
    );
  }
}