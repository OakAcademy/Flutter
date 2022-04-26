import 'package:flutter/material.dart';

class LayoutProblems extends StatelessWidget {
  const LayoutProblems({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Layout Problems'),
      ),
      body: Container(
        height: 300,
        child:  Row(
          
        children: [
               Expanded(
                 child: ListView(
                  scrollDirection:Axis.horizontal,
                 shrinkWrap: true,
                  children: [
                    Container(
                      width: 200,
                      color: Colors.purple.shade200,
                    ),
                    Container(
                      width: 200,
                      color: Colors.purple.shade400,
                    ),
                    
                    Container(
                      width: 200,
                      color: Colors.purple.shade200,
                    ),
                     Container(
                      width: 200,
                      color: Colors.purple.shade200,
                    ),
                    Container(
                      width: 200,
                      color: Colors.purple.shade400,
                    ),
                    
                    Container(
                      width: 200,
                      color: Colors.purple.shade200,
                    ),
                   
                  ],
                             ),
               ),

        ],
      ),
        decoration: BoxDecoration(border: Border.all(
          width: 6,color: Colors.pink
        )),
      ),
      
    );
  }

  Column listViewinColumn() {
    return Column(
        children: [
          
             Expanded(
               child: ListView(
               shrinkWrap: true,
                children: [
                  Container(
                    height: 200,
                    color: Colors.purple.shade200,
                  ),
                  Container(
                    height: 200,
                    color: Colors.purple.shade400,
                  ),
                  
                  Container(
                    height: 200,
                    color: Colors.purple.shade200,
                  ),
                  Container(
                    height: 200,
                    color: Colors.purple.shade400,
                  ),
                  
                  Container(
                    height: 200,
                    color: Colors.purple.shade200,
                  ),
                  Container(
                    height: 200,
                    color: Colors.purple.shade400,
                  ),
                 
                  Container(
                    height: 200,
                    color: Colors.purple.shade200,
                  ),
                  Container(
                    height: 200,
                    color: Colors.purple.shade400,
                  ),
                ],
                           ),
             ),
          
        ],
      );
  }
}