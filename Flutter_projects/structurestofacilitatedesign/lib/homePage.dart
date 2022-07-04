import 'package:flutter/material.dart';

import 'models/data.dart';

class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);
  //HomePage(Key k):super(key: k);
  

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late List<Data> allData;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    allData=[Data('Inception','A thief who steals corporate'
    ' secrets through the use of dream-sharing technology is'
    ' given the inverse task of planting an idea' 
    'into the mind of a C.E.O., but his tragic' 
    'past may doom the project and his team to disaster.',
    false),
    Data('Inception','A thief who steals corporate'
    ' secrets through the use of dream-sharing technology is'
    ' given the inverse task of planting an idea' 
    'into the mind of a C.E.O., but his tragic' 
    'past may doom the project and his team to disaster.',
    false),
    Data('Inception','A thief who steals corporate'
    ' secrets through the use of dream-sharing technology is'
    ' given the inverse task of planting an idea' 
    'into the mind of a C.E.O., but his tragic' 
    'past may doom the project and his team to disaster.',
    false),
    Data('Inception','A thief who steals corporate'
    ' secrets through the use of dream-sharing technology is'
    ' given the inverse task of planting an idea' 
    'into the mind of a C.E.O., but his tragic' 
    'past may doom the project and his team to disaster.',
    false),
    Data('Inception','A thief who steals corporate'
    ' secrets through the use of dream-sharing technology is'
    ' given the inverse task of planting an idea' 
    'into the mind of a C.E.O., but his tragic' 
    'past may doom the project and his team to disaster.',
    false),
    Data('Inception','A thief who steals corporate'
    ' secrets through the use of dream-sharing technology is'
    ' given the inverse task of planting an idea' 
    'into the mind of a C.E.O., but his tragic' 
    'past may doom the project and his team to disaster.',
    false)];
  }
  
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
     // itemExtent: 200,
     itemCount: allData.length,
      itemBuilder: (context,index){
        return ExpansionTile(
          key:PageStorageKey('$index'),
          initiallyExpanded: allData[index].expanded,
          title:Text(allData[index].name),
        children: [Container(
          child: Text(allData[0].detail),
          color: Colors.yellow.shade200,
          height: 100,
        )],);
      });

      
  }
}