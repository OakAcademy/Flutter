import 'package:flutter/material.dart';

class UsingTab extends StatefulWidget {
  const UsingTab({ Key? key }) : super(key: key);
  



  @override
  State<UsingTab> createState() => _UsingTabState();

}

class _UsingTabState extends State<UsingTab> with SingleTickerProviderStateMixin {
   late TabController tabController;
   

    @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController=TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar:bottomTabbar() ,
      appBar: AppBar(title: Text('Using Tabbar'),
      bottom: tabbar(),),
      body:TabBarView(
        controller: tabController,
        children: [
        Container(color:Colors.blue.shade100,
        child:Center(child: Text('Tab 1',
        style: TextStyle(fontSize: 48),),)),
        Container(color:Colors.blue.shade200,
        child:Center(child: Text('Tab 2',
        style: TextStyle(fontSize: 48),),)),
        Container(color:Colors.blue.shade300,
        child:Center(child: Text('Tab 3',
        style: TextStyle(fontSize: 48),),))
      ],)
      
    );
  }

  TabBar tabbar() {
    return TabBar(
      labelColor: Colors.pink,
      unselectedLabelColor: Colors.yellow,
      controller: tabController,
      tabs: [
      Tab( icon: Icon(Icons.directions_bike),text:'Tab 1'),
      Tab(icon: Icon(Icons.directions_car),text:'Tab 2'),
      Tab(icon: Icon(Icons.flight),text:'Tab 3'),
    ],);
  }

  Widget bottomTabbar() {
    return Container(
      color: Colors.green.shade200,
      child: TabBar(
        labelColor: Colors.pink,
        unselectedLabelColor: Colors.yellow,
        controller: tabController,
        tabs: [
        Tab( icon: Icon(Icons.directions_bike),text:'Tab 1'),
        Tab(icon: Icon(Icons.directions_car),text:'Tab 2'),
        Tab(icon: Icon(Icons.flight),text:'Tab 3'),
      ],),
    );
  }
}