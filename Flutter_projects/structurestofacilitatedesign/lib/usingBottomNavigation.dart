
import 'package:flutter/material.dart';
import 'package:structurestofacilitatedesign/callPage.dart';
import 'package:structurestofacilitatedesign/cameraPage.dart';
import 'package:structurestofacilitatedesign/homePage.dart';
import 'package:structurestofacilitatedesign/messagePage.dart';
import 'package:structurestofacilitatedesign/usingPageView.dart';
import 'package:structurestofacilitatedesign/usingdrawerinkwell.dart';

import 'usingTab.dart';

class UsingBottomNavigation extends StatefulWidget {
  const UsingBottomNavigation({ Key? key }) : super(key: key);

  @override
  State<UsingBottomNavigation> createState() => _UsingBottomNavigationState();
}

class _UsingBottomNavigationState extends State<UsingBottomNavigation> {
  int selectedItem=0;
  late List allPages;
  HomePage homePage=HomePage(); 
  CallPage callPage=CallPage();
  MessagePage messagePage=MessagePage();
  CameraPage cameraPage=CameraPage();
  UsingPageView pageView=UsingPageView();
   
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    
    
    //allPages=[ homePage,callPage,messagePage,cameraPage];
    allPages=[ homePage,callPage,pageView,cameraPage];
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      bottomNavigationBar: BottomNavBar(),
      appBar: AppBar(
        title: Text('Using Bottom Navigation Bar'),
      ),
      body:allPages[selectedItem],
    
      /* body:Center(child:Text('Using Bottom Navigation Bar',
      style: TextStyle(fontSize: 30),)) */
    );
  }

  Theme BottomNavBar() {
    return Theme(
      data: ThemeData(
        canvasColor: Colors.pink.shade300
      ),
      child: BottomNavigationBar(
        items: [BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label:'Home',
          backgroundColor: Colors.yellow),
          BottomNavigationBarItem(
          icon: Icon(Icons.call),
          label:'Call',
          backgroundColor: Colors.green),
          BottomNavigationBarItem(
          icon: Icon(Icons.message),
          label:'Message',
          backgroundColor: Colors.blue),
          BottomNavigationBarItem(
          icon: Icon(Icons.camera),
          label:'Camera',
          backgroundColor: Colors.red)],
          type: BottomNavigationBarType.shifting,
          currentIndex: selectedItem,
          onTap: (index){
            setState(() {
              selectedItem=index;
              if(selectedItem==3){
                Navigator.of(context).push(MaterialPageRoute(builder: 
                (context)=> UsingTab())).then((b){
                  selectedItem=0;
                });
              }
            });
          },),
    );
  }
}