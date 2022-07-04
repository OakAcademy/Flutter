import 'package:flutter/material.dart';

class UsingPageView extends StatefulWidget {
  const UsingPageView({ Key? key }) : super(key: key);
  

  @override
  State<UsingPageView> createState() => _UsingPageViewState();
}

class _UsingPageViewState extends State<UsingPageView> {
  bool scrollDirectionHorizontal=true;
  bool pageSnapping=true;
  bool reverse=false;
  var pageController=PageController(
    initialPage: 0,
    keepPage:true,
    viewportFraction: 1
  );
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: PageView(
           scrollDirection:scrollDirectionHorizontal==true? Axis.horizontal:Axis.vertical , 
           reverse: reverse,
           controller:pageController ,
           pageSnapping: pageSnapping,
           onPageChanged: (index){
              debugPrint('Page View index: $index');
           },
           children: [
            Container(color: Colors.blue.shade100,
            child:Center(child: Text('Page 1',style: TextStyle(fontSize: 30),),)),
            Container(color: Colors.blue.shade300,
            child:Center(child: Text('Page 2',style: TextStyle(fontSize: 30),),)),
            Container(color: Colors.blue.shade500,
            child:Center(child: Text('Page 3',style: TextStyle(fontSize: 30),),)),
           ],
          ),
        ),
        Expanded(
          child: Container(color:Colors.pink.shade300,
          height: 150,
          width:double.infinity,
          child: Column(children: [
            Row(
              children: [
                  Text('Scroll Direction'),
                  Checkbox(value: scrollDirectionHorizontal, 
                  onChanged: (value){
                    setState(() {
                      scrollDirectionHorizontal=value!;
                    }); 
                  }),
                  Text('Page Snap'),
                  Checkbox(value: pageSnapping, 
                  onChanged: (value){
                    setState(() {
                      pageSnapping=value!;
                    });
                  }),
                   Text('Reverse'),
                  Checkbox(value: reverse, 
                  onChanged: (value){
                    setState(() {
                      reverse=value!;
                    });
                  })
              ],
            )

          ],),
            
          ),),
      
    ]);
  }
}