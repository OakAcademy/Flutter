import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class  ButtonTypes extends StatelessWidget {
  const ButtonTypes ({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child:Column(children: [
        TextButton(onPressed: (){},
         child: Text('Text Button'),),
         TextButton.icon(onPressed: (){},
          style: ButtonStyle(
            backgroundColor:MaterialStateProperty.all(Colors.pink),
            foregroundColor: MaterialStateProperty.all(Colors.yellow),
            overlayColor: MaterialStateProperty.all
            (Colors.yellow.withOpacity(0.3)),

          ),
          icon:Icon(Icons.grade), 
          label:Text('Text Button with Icon')),
          
          ElevatedButton(onPressed: (){},
          style: ElevatedButton.styleFrom(
            primary: Colors.purple,
            onPrimary:Colors.pink,
          ), 
          child: Text('Elevated Button')),
          ElevatedButton.icon(onPressed: (){}, icon:
           Icon(Icons.grade), 
           label: Text('Elevated Button with icon'),),
          
          OutlinedButton(onPressed:(){},
          child:Text('Outlined Button')),

          OutlinedButton.icon(onPressed:(){},
          icon:Icon(Icons.grade), 
           label: Text('Outlined Button with icon'),),


      ],)
      
      
    );
  }
}