import 'package:flutter/material.dart';

void  main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
    @override
  Widget build(BuildContext context) {
    final ThemeData theme = ThemeData(
      primarySwatch:Colors.deepPurple,
    );
    
    return MaterialApp(
      
      theme: theme.copyWith(
     colorScheme: theme.colorScheme.copyWith
     (secondary: Colors.pink),
     ),
      
      home:Scaffold(
        //backgroundColor: Colors.indigo,
        appBar:AppBar(
          title:Text('First Project'),
          //backgroundColor:Colors.deepPurple ,
        ) ,

        body:Container(
          //color:Colors.pink.shade100,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            createRow(),
            Expanded(child: createColumn()),
          ],),
          
        ),
        
         
             
          floatingActionButton:FloatingActionButton(
            onPressed: ()
           { debugPrint('Button Clicked'); },
           child:Icon(Icons.add_circle_outline,
           color: Colors.yellow,),
           ) ,
              ),
    );
  }

   Row createRow() {
     return Row(
       mainAxisAlignment: MainAxisAlignment.spaceBetween,
       children: [
        createContainer('1', Colors.purple.shade100),
        createContainer('2', Colors.purple.shade200),
        createContainer('3', Colors.purple.shade300),
        createContainer('4', Colors.purple.shade400),
        createContainer('5', Colors.purple.shade500),
        /* Container(
         alignment: Alignment.center,
         width: 75,
         height: 75,
         color: Colors.purple.shade200,
         child: Text('1',style: TextStyle(fontSize: 36),),
       ),
       Container(
         alignment: Alignment.center,
         width: 75,
         height: 75,
         color: Colors.purple.shade300,
         child: Text('2',style: TextStyle(fontSize: 36),),
       ),
       Container(
         alignment: Alignment.center,
         width: 75,
         height: 75,
         color: Colors.purple.shade400,
         child: Text('3',style: TextStyle(fontSize: 36),),
       ),
       Container(
         alignment: Alignment.center,
         width: 75,
         height: 75,
         color: Colors.purple.shade500,
         child: Text('4',style: TextStyle(fontSize: 36),),
       ),
       Container(
         alignment: Alignment.center,
         width: 75,
         height: 75,
         color: Colors.purple.shade600,
         child: Text('5',style: TextStyle(fontSize: 36),),
       ),  */
     ],);
   }
   Column createColumn(){
     return Column(children: [
       Expanded(child: createContainer(
         '2', Colors.purple.shade200,margin: 10)),
       Expanded(child: createContainer('3', Colors.purple.shade300,margin: 10)),
       Expanded(child: createContainer('4', Colors.purple.shade400,margin: 10)),
       Expanded(child: createContainer('5', Colors.purple.shade500,margin: 10)),
       Expanded(child: createContainer('6', Colors.purple.shade600,margin: 10)),
       Expanded(child: createContainer('7', Colors.purple.shade700,margin: 10)),
       Expanded(child: createContainer('8', Colors.purple.shade800,margin: 10)),
       Expanded(child: createContainer('9', Colors.purple.shade900,margin: 10)),
       Expanded(child: createContainer('10', Colors.purple.shade900,margin: 10)),
        /* Expanded(
         child: Container(
           margin: EdgeInsets.only(top:10),
           alignment: Alignment.center,
           width: 75,
           height: 75,
           color: Colors.purple.shade200,
           child: Text('2',style: TextStyle(fontSize: 36),),
         ),
       ),
       Expanded(
         child: Container(
           margin: EdgeInsets.only(top:10),
           alignment: Alignment.center,
           width: 75,
           height: 75,
           color: Colors.purple.shade300,
           child: Text('3',style: TextStyle(fontSize: 36),),
         ),
       ),
       Expanded(
         child: Container(
           margin: EdgeInsets.only(top:10),
           alignment: Alignment.center,
           width: 75,
           height: 75,
           color: Colors.purple.shade400,
           child: Text('4',style: TextStyle(fontSize: 36),),
         ),
       ),
       Expanded(
         child: Container(
           margin: EdgeInsets.only(top:10),
           alignment: Alignment.center,
           width: 75,
           height: 75,
           color: Colors.purple.shade500,
           child: Text('5',style: TextStyle(fontSize: 36),),
         ),
       ),
       Expanded(
         child: Container(
           margin: EdgeInsets.only(top:10),
           alignment: Alignment.center,
           width: 75,
           height: 75,
           color: Colors.purple.shade600,
           child: Text('6',style: TextStyle(fontSize: 36),),
         ),
       ),
       Expanded(
         child: Container(
           margin: EdgeInsets.only(top:10),
           alignment: Alignment.center,
           width: 75,
           height: 75,
           color: Colors.purple.shade700,
           child: Text('7',style: TextStyle(fontSize: 36),),
         ),
       ),
       Expanded(
         child: Container(
           margin: EdgeInsets.only(top:10),
           alignment: Alignment.center,
           width: 75,
           height: 75,
           color: Colors.purple.shade800,
           child: Text('8',style: TextStyle(fontSize: 36),),
         ),
       ),
       Expanded(
         child: Container(
           margin: EdgeInsets.only(top:10),
           alignment: Alignment.center,
           width: 75,
           height: 75,
           color: Colors.purple.shade900,
           child: Text('9',style: TextStyle(fontSize: 36),),
         ),
       ),
       Expanded(
         child: Container(
           margin: EdgeInsets.only(top:10),
           alignment: Alignment.center,
           width: 75,
           height: 75,
           color: Colors.purple.shade900,
           child: Text('10',style: TextStyle(fontSize: 36),),
         ),
       ), */ 
     ],);
   }
   Container createContainer(String text, Color color,{double margin=0}){
     return Container( 
         margin: EdgeInsets.only(top:margin),
         alignment: Alignment.center,
         width: 75,
         height: 75,
         color: color,
         child: Text(text,style: TextStyle(fontSize: 36),),
         );
   }
   
    
    
    
    List<Widget> get overFlowProblem {
      return [
          Container( width: 100,
            height: 100,
            color: Colors.blue,),
          
           Container( width: 100,
            height: 100,
            color: Colors.purple,), 
           Container( width: 100,
            height: 100,
            color: Colors.green,),
           Container( width: 100,
            height: 100,
            color: Colors.pink,),
          Container( width: 100,
            height: 100,
            color: Colors.green,),
          Container( width: 100,
            height: 100,
            color: Colors.pink,),
          
        ];
    }
    List<Widget> get containerWithExpanded {
      return [
          Expanded(
            flex:3,
            child: Container( width: 100,
            height: 100,
            color: Colors.blue,),
          ),
          Expanded(
            flex:2,
            child: Container( width: 100,
            height: 100,
            color: Colors.purple,),
          ),
          Expanded(
            child: Container( width: 100,
            height: 100,
            color: Colors.green,),
          ),
          Expanded(
            child: Container( width: 100,
            height: 100,
            color: Colors.pink,),
          ),
          Expanded(
            child: Container( width: 50,
            height: 100,
            color: Colors.yellow,),
          ),
         /*  Expanded(
            child: Container( width: 50,
            height: 100,
            color: Colors.pink,),
          ),
          Expanded(
            child: Container( width: 50,
            height: 100,
            color: Colors.green,),
          ), */
        ];
    }
    List<Widget> get containerwithFlexible {
      return [
          Flexible(
            child: Container( width: 100,
              height: 100,
              color: Colors.blue,),
          ),
          
           Flexible(
             child: Container( width: 100,
              height: 100,
              color: Colors.purple,),
           ), 
           Flexible(
            child: Container( width: 100,
              height: 100,
              color: Colors.pink,),
          ),
          
           Flexible(
             child: Container( width: 100,
              height: 100,
              color: Colors.green,),
           ), 
           
            ];
          }
          
    Widget containerLessons() {
      return Center(
        child:Container(
          //color:Colors.blueGrey,
          padding: EdgeInsets.all(35),
          width:200,
          height:200,
          /* child:FlutterLogo(
            //style: FlutterLogoStyle.horizontal,
            size: 92,
            //textColor: Colors.pink,
           ), */
           decoration: BoxDecoration(
             color: Colors.blueGrey,
             shape: BoxShape.rectangle,
             border:Border.all(width: 5, 
             color: Colors.purple,),
             borderRadius: BorderRadius.only(
               bottomRight:Radius.circular(30),
               topLeft: Radius.circular(40), ),
              image: DecorationImage(
                image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTW6509Xrnys2Pp_8RB3ffNOsqDrKlPtkvkRQ&usqp=CAU'),
                fit:BoxFit.cover),
               boxShadow: [
                 BoxShadow(color: Colors.purple,
                 offset: Offset(10,10),
                 blurRadius: 30,),
                 BoxShadow(color: Colors.pink,
                 offset: Offset(-10,-10),
                 blurRadius: 30,)]
             ),
             ),
           );
    }
}


//Container, Margin, Padding

        /* body:Container(
          color:Colors.yellow,
          child: Center(
            widthFactor: 3,
            heightFactor: 3,
            child: Container(
              padding:EdgeInsets.all(10),
              width:100,
              height: 100,
              color:Colors.blue,
              //alignment: Alignment.center,
              child: Container(
                margin:EdgeInsets.all(30),
                color:Colors.pink,
                width: 50,
                height: 50,),
            ),
          ),
        ), */


        /* Container(
          // alignment: Alignment.center,
          //margin: EdgeInsets.all(25),
          margin: EdgeInsets.fromLTRB(
           10 , 5, 3, 50),
           padding: EdgeInsets.all(20),
          /* constraints: BoxConstraints(
            minHeight: 200,
            minWidth: 200,
            maxHeight: 200,
            maxWidth: 200 ), */
          color:Colors.yellow,
           child: Text('Hello World', 
          textAlign: TextAlign.center,
          style: TextStyle(
          fontSize: 36,
          color:Colors.pink),), 
           width: 300,
          height: 300, 
        ), */

        /* Center(
          child:Text('Hello World',
          style: TextStyle(
          fontSize: 36,
          color:Colors.pink),) ,
          ) , */

        //Row-Column Lessons 1
          /* Container(
          color:Colors.yellow,
          //width:200,
          //height: 300,
          child:Column(
             mainAxisSize: MainAxisSize.max,
             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
             crossAxisAlignment: CrossAxisAlignment.stretch,
             
            children: [Container(
            child: Text('Container 1'),
            width: 100,
            height:100,
            color: Colors.lightBlue,
          ),
          Container(
            child: Text('Container 2'),
            width: 100,
            height: 100,
            color: Colors.pinkAccent,
          ),
          Container(
            child: Text('Container 3'),
            width: 100,
            height: 100,
            color: Colors.purple,
          )
          ],),
        ), */
          /* child:Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [Container(
            child: Text('Container 1'),
            width: 100,
            height:100,
            color: Colors.lightBlue,
          ),
          Container(
            child: Text('Container 2'),
            width: 100,
            height: 100,
            color: Colors.pinkAccent,
          ),
          Container(
            child: Text('Container 3'),
            width: 100,
            height: 100,
            color: Colors.purple,
          )
          ],),
        ), */