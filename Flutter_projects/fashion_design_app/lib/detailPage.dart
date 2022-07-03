import 'package:flutter/material.dart';

class DetailPAge extends StatefulWidget {
  //const DetailPAge({ Key? key }) : super(key: key);
  var img;
  DetailPAge({this.img});

  @override
  State<DetailPAge> createState() => _DetailPAgeState();
}

class _DetailPAgeState extends State<DetailPAge> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children:[Hero(
          tag:widget.img,
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage(widget.img),
              fit: BoxFit.cover),
            ),),
        ),
        Positioned(
          left: 15,
          right: 15,
          bottom: 15,
          child: Material(
            elevation: 4,
            borderRadius: BorderRadius.circular(15),
            child: Container(
              
              height:230,
              width: MediaQuery.of(context).size.width-30,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15)
              ),
              child: Column(children: [
                Row(children: [
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        border:Border.all(color:Colors.purple.withOpacity(0.5),
                         ),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('assets/images/shoes.jpg')),
                       ),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                    Text('LOREM IPSUM',
                    style: TextStyle(fontSize: 24,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Montserrat'),),
                    SizedBox(height: 5,),
                    Text('LOREM IPSUM',
                    style: TextStyle(fontSize: 16,
                    
                    fontFamily: 'Montserrat'),),
                    SizedBox(height: 10,),
                    Container(
                      height: 40,
                      width: MediaQuery.of(context).size.width-180,
                      child: Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit,',
                       style: TextStyle(fontSize: 14,
                      
                      fontFamily: 'Montserrat'),),
                    )
                  ],)
                ],),
                Divider(),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    Text('\$ 50 ',
                    style:TextStyle(fontSize: 24) ,),
                    FloatingActionButton(
                      backgroundColor: Colors.deepPurple.shade300,
                      onPressed: (){},
                      child: Icon(Icons.arrow_forward,
                      color:Colors.pink.shade600),
                    )
                  ],
                  ),
                )
              ],),
              ),
            
          ),
        )
        ] 
      ),
    );
  }
}