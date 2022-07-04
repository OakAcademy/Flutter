import 'package:flutter/material.dart';

class UsingDrawer extends StatelessWidget {
  const UsingDrawer({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: [BottomNavigationBarItem
        (icon: Icon(Icons.home),
        label:'Home')],),
      drawer:Drawer(
       child:Column(
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
           color: Colors.deepOrange.shade200 ),
            child: Text('Drawer Header',
            style: TextStyle(fontSize: 40,
            fontWeight: FontWeight.bold),)
          ),
          Expanded(
            child: ListView(
              children: [ListTile(
                leading: Icon(Icons.home),
                title: Text('Home Page'),
                trailing: Icon(Icons.chevron_right),
              ),
              ListTile(
                leading: Icon(Icons.call),
                title: Text('Call'),
                trailing: Icon(Icons.chevron_right),
              ),
              ListTile(
                  leading: Icon(Icons.message),
                  title: Text('Message'),
                  trailing: Icon(Icons.chevron_right),
                ),
              Divider(),
              InkWell(
                onTap: (){

                },
                splashColor: Colors.orange.shade500,
                child: ListTile(
                  leading: Icon(Icons.home),
                  title: Text('Home Page'),
                  trailing: Icon(Icons.chevron_right),
                ),
              ),],
            ),
          )
        ],) , 
      ) ,
      appBar: AppBar(
        title: Text('Using Drawer and Inkwell'),
      ),
      body:Center(
        child: Text('Using Drawer and Inkwell',
        style: TextStyle(fontSize: 30),),
      )
    
    );
  }
}