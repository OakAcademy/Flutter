import 'package:flutter/material.dart';

class UsingGriedView extends StatelessWidget {
  const UsingGriedView({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Using GriedView'),
      ),
      body: GridView.builder(
        itemCount: 50,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2), 
        itemBuilder: (BuildContext context, int index){
        return  GestureDetector(
          child: Container(
           margin: EdgeInsets.all(10),
           alignment: Alignment.bottomCenter,
           decoration: (BoxDecoration(
             border: Border.all(
               color:Colors.purple,
               width:4,
               style: BorderStyle.solid
             ),
              borderRadius: BorderRadius.all(
               new Radius.circular(30)), 
              boxShadow: [new BoxShadow(
                //spreadRadius: 10,
               // blurRadius: 20,
                color:Colors.pink,
                offset: new Offset(5, 10)
                
              )],
              //shape: BoxShape.circle,
             color:Colors.purple[100* ((index+1)%9)],
             gradient: LinearGradient(colors:[Colors.pink,Colors.purple],
             begin: Alignment.bottomLeft,
             end:Alignment.topRight ),
             image:DecorationImage(
               image: AssetImage('assets/images/image1.jpg'),
               fit:BoxFit.contain,
               alignment: Alignment.topCenter),
        
            )),
           child: Padding(
             padding: const EdgeInsets.all(8.0),
             child: Text('Using GridView ${index+1}',
             style: TextStyle(fontSize: 18),
             textAlign: TextAlign.end,),
           ),
           
          ),
          onTap: (){
            debugPrint('Clicked $index');
          },
          onDoubleTap: (){
            debugPrint('Double Clicked $index');
          },
          onLongPress: (){
            debugPrint('Long Press $index');
          },
        );
      }
        ),
      
    );
  }
}
    

  /* GridView usingGriedViewExtent() {
    return GridView.extent(
    //scrollDirection: Axis.horizontal,
    //reverse: true,
    maxCrossAxisExtent: 200,
    crossAxisSpacing: 15,
    mainAxisSpacing: 25,
    children: [
      Container(
        alignment: Alignment.center,
        child: Text('Using GridView 1',style: TextStyle(fontSize: 24),),
        color:Colors.purple,
      ),
      Container(
        alignment: Alignment.center,
        child: Text('Using GridView 2',style: TextStyle(fontSize: 24),),
        color:Colors.purple,
      ),
      Container(
        alignment: Alignment.center,
        child: Text('Using GridView 3',style: TextStyle(fontSize: 24),),
        color:Colors.purple,
      ),
      Container(
        alignment: Alignment.center,
        child: Text('Using GridView 4',style: TextStyle(fontSize: 24),),
        color:Colors.purple,
      ),Container(
        alignment: Alignment.center,
        child: Text('Using GridView 5',style: TextStyle(fontSize: 24),),
        color:Colors.purple,
      ),
      Container(
        alignment: Alignment.center,
        child: Text('Using GridView 6',style: TextStyle(fontSize: 24),),
        color:Colors.purple,
      ),
      Container(
        alignment: Alignment.center,
        child: Text('Using GridView 7',style: TextStyle(fontSize: 24),),
        color:Colors.purple,
      ),
      Container(
        alignment: Alignment.center,
        child: Text('Using GridView 8',style: TextStyle(fontSize: 24),),
        color:Colors.purple,
      )

    ],

  );
  }
  
  GridView usingGriedViewCount() {
    return GridView.count(
      //scrollDirection: Axis.horizontal,
      reverse: true,
      crossAxisCount: 2,
      crossAxisSpacing: 15,
      mainAxisSpacing: 25,
      children: [
        Container(
          alignment: Alignment.center,
          child: Text('Using GridView 1',style: TextStyle(fontSize: 24),),
          color:Colors.purple,
        ),
        Container(
          alignment: Alignment.center,
          child: Text('Using GridView 2',style: TextStyle(fontSize: 24),),
          color:Colors.purple,
        ),
        Container(
          alignment: Alignment.center,
          child: Text('Using GridView 3',style: TextStyle(fontSize: 24),),
          color:Colors.purple,
        ),
        Container(
          alignment: Alignment.center,
          child: Text('Using GridView 4',style: TextStyle(fontSize: 24),),
          color:Colors.purple,
        ),Container(
          alignment: Alignment.center,
          child: Text('Using GridView 5',style: TextStyle(fontSize: 24),),
          color:Colors.purple,
        ),
        Container(
          alignment: Alignment.center,
          child: Text('Using GridView 6',style: TextStyle(fontSize: 24),),
          color:Colors.purple,
        ),
        Container(
          alignment: Alignment.center,
          child: Text('Using GridView 7',style: TextStyle(fontSize: 24),),
          color:Colors.purple,
        ),
        Container(
          alignment: Alignment.center,
          child: Text('Using GridView 8',style: TextStyle(fontSize: 24),),
          color:Colors.purple,
        )

      ],

    );
  }
 */