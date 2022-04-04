import 'package:flutter/material.dart';

class ImageAssetLesson extends StatelessWidget {
  const ImageAssetLesson({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  
    
     Center(child:
    Column(children:[
      FadeInImage.assetNetwork(
        placeholder: 'assets/images/image2.jpg', 
      image: 'https://www.w3schools.com/w3images/lights.jpg'),
      IntrinsicHeight(
        child: Row(
          crossAxisAlignment:CrossAxisAlignment.stretch,
          children: [
              Expanded(
                child: Container(
                  //height:300,
                /* width:100,
                height:100, */
                color: Colors.grey,
                child: Image.asset('assets/images/image1.jpg',
                fit:BoxFit.cover)),
              ),
                 
            Expanded(
              child: Container(
                /* width:100,
                height:100, */
                color: Colors.grey,
                child:
                 Image.network('https://www.w3schools.com/w3images/lights.jpg',
                 fit:BoxFit.cover),),
            ) ,
            Expanded(
              child: Container(
               /*  width:300,
                height:300, */
                color: Colors.grey,
                child: CircleAvatar(
                  child: Text('Hello',style: TextStyle(fontSize: 36),),
                  radius:50,
                  backgroundImage: AssetImage('assets/images/image1.jpg'),
                  backgroundColor: Colors.purple,
                  foregroundColor: Colors.pink,)),
            ),
        ],),
      ),
     Expanded (child: Placeholder()),]) 

     
      /* child: Center(child: Column(
        children: [
          Container(
            width:300,
            height:300,
            color: Colors.grey,
            child: Image.asset('assets/images/image1.jpg',
            fit:BoxFit.cover)),
               
          Container(
            width:300,
            height:300,
            color: Colors.grey,
            child:
             Image.network('https://www.w3schools.com/w3images/lights.jpg',
             fit:BoxFit.cover),) ,
          Container(
           /*  width:300,
            height:300, */
            color: Colors.grey,
            child: CircleAvatar(
              child: Text('Hello',style: TextStyle(fontSize: 36),),
              radius:50,
              backgroundImage: AssetImage('assets/images/image1.jpg'),
              backgroundColor: Colors.purple,
              foregroundColor: Colors.pink,)),
            
         
        ],
      ),), */
      
    );
  }
}