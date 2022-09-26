

import 'package:flutter/material.dart';
import 'package:dio/dio.dart';

import 'models/user_model.dart';

class RemoteApi extends StatefulWidget {
  const RemoteApi({ Key? key }) : super(key: key);

  @override
  State<RemoteApi> createState() => _RemoteApiState();
}

class _RemoteApiState extends State<RemoteApi> {

  late final Future<List<UserModel>?> _userList;
  
    @override
    void initState() { 
      super.initState();
      _userList=_getUser();
    }

  Future<List<UserModel>?>  _getUser() async{
    try{
     
     var response= 
            await Dio().get('https://jsonplaceholder.typicode.com/users');
      List<UserModel> userList=[];
      if(response.statusCode==200){
        userList=(response.data as List).map(
                                  (e) => UserModel.fromMap(e)).toList();

        //debugPrint(response.data.toString());
        
      }
      return userList;
    }on DioError catch(e){
      Future.error(e.message);
     /* debugPrint(e.toString());
      return []; */
    }
    
  }

  @override
  Widget build(BuildContext context) {
    _getUser();
    return Scaffold(
      appBar: AppBar(
        title:Text('Remote Api') ,),
      body:Container(
        child: FutureBuilder<List<UserModel>?>(future:_userList,
        builder:(context, snapshot) {
          if(snapshot.hasData){
            var userList=snapshot.data!;
            return ListView.builder(itemCount:userList.length,
            itemBuilder: (context, index) {
              var user =userList[index];
              return ListTile(title:Text(user.name),
              subtitle: Text(user.email),
              leading: Text(user.id.toString()),);
            },);

          }else if(snapshot.hasError){
            return Text(snapshot.error.toString());

          }else
            return CircularProgressIndicator();
        } ,),
      ),
    );
  }
}