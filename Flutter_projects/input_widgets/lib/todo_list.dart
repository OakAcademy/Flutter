import 'package:flutter/material.dart';

class ToDoList extends StatelessWidget {
  const ToDoList({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      title: Text('ToDo List'),
      
    ),
    body: MyHomePage(),
      
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({ Key? key }) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<String> todoList=[];
  TextEditingController controller1=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: [
        Flexible(child:ListView.builder(
          itemCount: todoList.length,
          itemBuilder: (context,index)=>ListTile(
            title: Text(todoList[index]),

          ),
        ) ),
        TextField(
          controller: controller1,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [ElevatedButton(onPressed: (){
          setState(() {
            todoList.add(controller1.text);
            controller1.clear();
          });
          
        }, 
        child: Text ('Add ')),
        ElevatedButton(onPressed: (){
          setState(() {
            todoList.remove(controller1.text);
            controller1.clear();
          });
        },
         child:Text('Delete')),
],)
        
      ],),
      
    );
  }
}