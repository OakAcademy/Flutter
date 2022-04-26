import 'package:flutter/material.dart';

class UsingTextField extends StatefulWidget {
  const UsingTextField({ Key? key }) : super(key: key);

  @override
  State<UsingTextField> createState() => _UsingTextFieldState();
}

class _UsingTextFieldState extends State<UsingTextField> {

   late TextEditingController nameController;
    FocusNode? _focusNode;
   int maxLineCount=1;

    @override
  void initState() {
    super.initState();
    nameController=TextEditingController(text: 'OAK OAK');
    _focusNode=FocusNode();
    _focusNode!.addListener(() {
      setState(() {
        
      });
      if(_focusNode!.hasFocus){
        maxLineCount=5;
      }else
        maxLineCount=1;
     });
    
  }
    @override
  void dispose() {
    nameController.dispose();
    _focusNode!.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Using TextField'),),
      body:Column(children: [
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: TextField(
            focusNode: _focusNode,
            controller:nameController ,
            keyboardType: TextInputType.number,
            textInputAction: TextInputAction.next,
            autofocus: true,
            maxLines:maxLineCount,
            maxLength: 15,
            onChanged: (String value){
              nameController.value=TextEditingValue(
                text:value,
                selection:TextSelection.collapsed(offset:value.length) 
               );
              print(value);
            },
            onSubmitted: (String value){
               print('submit'+value);
            },
            decoration: InputDecoration(
              labelText: 'Label Text',
              hintText: 'User name:',
              //icon:Icon(Icons.add),
              prefixIcon: Icon(Icons.grade),
              suffixIcon: Icon(Icons.ac_unit),
              border: OutlineInputBorder(),
              
            ),
          ),
        ),

          Text(nameController.text,style: TextStyle(
            fontWeight:FontWeight.bold,
            fontSize: 24 ),),
         
         Padding(
          padding: const EdgeInsets.all(20.0),
          child: TextField(
            keyboardType: TextInputType.number,
            textInputAction: TextInputAction.next,
          ),
        ),

      ],),
      
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState(() {
            nameController.text='Flutter';
          });
          
        },
        child:Icon(Icons.add)),
      
    );
  }
}