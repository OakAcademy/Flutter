import 'package:flutter/material.dart';

class UsingListView extends StatelessWidget {
   UsingListView({ Key? key }) : super(key: key);
List<Book> allBooks=List.generate(2000, (index) => 
Book(index+1,'Book Name ${index+1}','Writer Name ${index+1}'));
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Using ListView'),),
      body:ListView.separated(
        itemBuilder: (BuildContext context, int index){
        var currentBook=allBooks[index];
        return Card(
          color:Colors.pink.shade100,

          child: ListTile(
            onTap: (){
              print('Clicked : $index');
            },
          title:Text(currentBook.name),
          subtitle: Text(currentBook.writer),
          leading: CircleAvatar(child: Text(currentBook.id.toString()),),
          ),
        );
      },
      itemCount:allBooks.length,
      separatorBuilder: (context, index) {
        var newIndex=index+1;
        if(newIndex%5==0)
        {return Divider(color:Colors.purple,
        thickness: 3,);
        }
        return Container();
        
      },)
    );
  }

  ListView firstListView() {
    return ListView(
      children: allBooks.map((Book book) => ListTile(
        title:Text(book.name),
        subtitle: Text(book.writer),
        leading: CircleAvatar(child: Text(book.id.toString()),),
      )).toList(),
    );
  }
}

class Book{
   int id=0;
   String name='';
   String writer='';

   Book(this.id,this.name,this.writer);
   
}