import 'package:flutter/material.dart';

class UsingCardLisTile extends StatelessWidget {
  const UsingCardLisTile({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Using Card ListTile'),
      ),
      body:Center(
        child:ListView(
          children:[ Column(
            children: [
             listElement(),
              listElement(),
              listElement(),
              listElement(),
               listElement(),
              listElement(),
              listElement(),
              listElement(),
              listElement(),
              
            ],
          ),
          ElevatedButton(
            onPressed: (){},child: Text('Elevated Button'),),],
          
        ), 
        )
      
    );
  }

  SingleChildScrollView usingScrollView() {
    return SingleChildScrollView(
        child: Column(
          children: [
           listElement(),
            listElement(),
            listElement(),
            listElement(),
             listElement(),
            listElement(),
            listElement(),
            listElement(),
            listElement(),
      
            
          ],
        ),
      );
  }

  Column listElement() {
    return Column(
        children: [
          Card(
            child:ListTile(
              leading: Icon(Icons.arrow_forward),
              title: Text('Title'),
              subtitle: Text('Subtitle'),
              trailing: Icon(Icons.arrow_back),
            ),
            color: Colors.purple.shade300,
            shadowColor: Colors.pink,
            elevation: 20,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20)),
            //child: Text('Using Card',style: TextStyle(fontSize: 36),),
          ),
          Divider(color:Colors.green,
          thickness: 3,
          indent: 20,
          endIndent:50 ,
          height: 20,)
        ],
      );
  }
}