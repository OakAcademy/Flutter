import 'package:flutter/material.dart';

class BookList extends StatelessWidget {
  const BookList({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int? elementNumber=ModalRoute.of(context)!.settings.arguments as int?;
    print('$elementNumber');
    List allBooks=List.generate(elementNumber!,(index)=>
    Book(index+1, 'Name: ${index+1}', 'Writer:${index+1}'));
    return Scaffold(
      appBar: AppBar(
        title: Text('Book List'),
      ),
      body:ListView.builder(
      itemCount: allBooks.length,
      itemBuilder: (context,index){
       return ListTile(
         onTap: (){
           var selectedBook=allBooks[index];
           Navigator.pushNamed(context, '/bookDetail',
           arguments:selectedBook);
         },

         leading: CircleAvatar(
           child: Text(allBooks[index].id.toString()),),
          title: Text(allBooks[index].name),
          subtitle: Text(allBooks[index].writer),
          
         );
      }),
      
    );
  }
}

class Book{
 int id=0;
 String name='';
 String writer='';
 Book(this.id,this.name,this.writer);

}