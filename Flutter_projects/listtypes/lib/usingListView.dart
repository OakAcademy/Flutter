import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
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
              //print('Clicked : $index');
              EasyLoading.instance.backgroundColor=Colors.blue;
              EasyLoading.showToast('Clicked',
              duration: Duration(seconds: 2),
              dismissOnTap: true,
              toastPosition: EasyLoadingToastPosition.bottom);
            },
            onLongPress: (){
              usingAlertDialog(context);
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

  void usingAlertDialog(BuildContext myContext) {
    //For IOS
    //showCupertinoDialog(context: context, builder: builder)
    showDialog(
      barrierDismissible: false,
      context: myContext, 
      builder: (context){
      
      return AlertDialog(
        
        title: Text('Alert Dialog'),
        content:SingleChildScrollView(
          //child:Text('Hello Alert'*100) ,
          child:ListBody(
            children: [
            Text('Hello'*50),
            Text('World'*50),
            Text('Alert Dialog'*100),
          ],)
          ),
          actions: [
            ButtonBar(
              children: [
                  TextButton(onPressed: (){
                    Navigator.pop(context);
                  }, child: Text('Yes')),
                  TextButton(onPressed: (){}, child: Text('No')),
                  /* TextButton(onPressed: (){}, child: Text('Yes')),
                  TextButton(onPressed: (){}, child: Text('No')),
                  TextButton(onPressed: (){}, child: Text('Yes')),
                  TextButton(onPressed: (){}, child: Text('No')),
                  TextButton(onPressed: (){}, child: Text('Yes')),
                  TextButton(onPressed: (){}, child: Text('No')),
                  TextButton(onPressed: (){}, child: Text('Yes')),
                  TextButton(onPressed: (){}, child: Text('No')), */
              ],
            )
            

          ],
      );
    });
  }
}

class Book{
   int id=0;
   String name='';
   String writer='';

   Book(this.id,this.name,this.writer);
   
}