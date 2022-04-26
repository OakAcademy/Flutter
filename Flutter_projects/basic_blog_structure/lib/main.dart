import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Basic Blog Structure',
      theme: ThemeData(primarySwatch: Colors.deepOrange),
      home: MyHomePage(),
      
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Basic Blog Structure'),
      backgroundColor: Colors.deepOrange.shade200,),
      body: MyBlogBody(),
    );
  }
}

class MyBlogBody extends StatefulWidget {
  const MyBlogBody({ Key? key }) : super(key: key);

  @override
  State<MyBlogBody> createState() => _MyBlogBodyState();
}

class _MyBlogBodyState extends State<MyBlogBody> {
  String blogText='Welcome my blog';
  canadaBlog(){
    setState(() {
      blogText='Lorem Ipsum is simply dummy text of the printing /n/n'
     'and typesetting industry. Lorem Ipsum has been the industry standard dummy text ever since the 1500s';
    });
    
    
  }
  
  
  @override
  Widget build(BuildContext context) {
    return Container(child: Center(
      child:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(blogText,style: TextStyle(fontSize: 20),),
          ElevatedButton(onPressed:(){
              canadaBlog();
          },
           child: Text('CANADA'),
           style: ElevatedButton.styleFrom(primary: Colors.green.shade300),),
          ElevatedButton(onPressed:(){
            setState(() {
        blogText='Lorem Ipsum is simply dummy text of the printing /n/n'
      'and typesetting industry. Lorem Ipsum has been the industry standard dummy text ever since the 1500s';
        });
              
          },
           child: Text('AUSTRALIA'),
           style: ElevatedButton.styleFrom(primary: Colors.blue.shade300),),
           ElevatedButton(onPressed:(){
               setState(() {
                  blogText='Lorem Ipsum is simply dummy text of the printing /n/n'
                'and typesetting industry. Lorem Ipsum has been the industry standard dummy text ever since the 1500s';
                });
          },
           child: Text('BRAZIL'),
           style: ElevatedButton.styleFrom(primary: Colors.pink.shade300),)
      ],) 
      
      
      ),
      
    );
  }
}