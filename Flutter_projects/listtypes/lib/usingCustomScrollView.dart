import 'package:flutter/material.dart';

class UsingCustomScrolView extends StatelessWidget {
  const UsingCustomScrolView({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          title: Text('Sliver Appbar',
          style:TextStyle(color: Colors.black)),
          expandedHeight: 300,
          snap:true,
          floating: true,
          pinned: true,
          backgroundColor: Colors.blueGrey,
          flexibleSpace: FlexibleSpaceBar(
          background: Image.asset('assets/images/sliver.jpg'),),
        ),

        SliverGrid(delegate: SliverChildListDelegate(constList),
         gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2)),
        SliverGrid(delegate:SliverChildBuilderDelegate
        (sliverListwithBuilder,childCount: 12),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3)),

        SliverGrid(delegate: SliverChildBuilderDelegate
        (sliverListwithBuilder,childCount: 12),
        gridDelegate:SliverGridDelegateWithMaxCrossAxisExtent(maxCrossAxisExtent: 300) ,),
        SliverPadding(padding: EdgeInsets.all(12),
        sliver: SliverList(
          delegate: SliverChildListDelegate(constList)),
        ),
        SliverGrid.count(crossAxisCount:3 ,children: constList,),
        SliverGrid.extent(maxCrossAxisExtent: 250,children: constList,),
         SliverPadding(padding: EdgeInsets.all(10),
        sliver:
        SliverList(
        delegate:SliverChildBuilderDelegate
        (sliverListwithBuilder,childCount: 7)),
        ),
        SliverPadding(padding: EdgeInsets.all(5),
        sliver:SliverFixedExtentList(delegate:SliverChildListDelegate(constList) ,
        itemExtent: 200,)),
        SliverFixedExtentList(delegate: SliverChildBuilderDelegate
        (sliverListwithBuilder,childCount: 7), itemExtent: 100)
      ],
    );
      
    
  }

  List<Widget> get constList {
    return [
          Container(height:150,
          color:Colors.purple.shade100,
          alignment: Alignment.center,
          child: Text('Sliver List Element',style: TextStyle(fontSize: 24),),),
          Container(height:150,color:Colors.purple.shade200,
          alignment: Alignment.center,
          child: Text('Sliver List Element',style: TextStyle(fontSize: 24),),),
          Container(height:150,color:Colors.purple.shade300,
           alignment: Alignment.center,
          child: Text('Sliver List Element',style: TextStyle(fontSize: 24),),),
          Container(height:150,color:Colors.purple.shade400, alignment: Alignment.center,
          child: Text('Sliver List Element',style: TextStyle(fontSize: 24),),),
          Container(height:150,color:Colors.purple.shade500, alignment: Alignment.center,
          child: Text('Sliver List Element',style: TextStyle(fontSize: 24),),),
          Container(height:150,color:Colors.purple.shade600,
           alignment: Alignment.center,
          child: Text('Sliver List Element',style: TextStyle(fontSize: 24),),),
          Container(height:150,color:Colors.purple.shade700, alignment: Alignment.center,
          child: Text('Sliver List Element',style: TextStyle(fontSize: 24),),),

        ];
  }

  Widget? sliverListwithBuilder(BuildContext context, int index) {
  
   return Container(height:150,
          color:Colors.pink[100*((index+1)%9)],
          alignment: Alignment.center,
          child: Text('Builder List',
          style: TextStyle(fontSize: 24),),
    );
  }
}