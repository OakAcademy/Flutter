import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: const MyHomePage(title: 'Flutter Firebase'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>{ 
  late FirebaseAuth auth;
  final String _email='stevegregor1@outlook.com';
  final String _password='newPassword12';
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    auth= FirebaseAuth.instance;

    auth.authStateChanges()
    .listen((User? user) {
      if (user == null) {
      print('User is currently signed out!');
    } else {
      print('User is signed in!');
    }
  });
  }
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(onPressed: (){
              createUserEmailAndPassWord();
            },
            style: ElevatedButton.styleFrom(primary: Colors.pink.shade300),
             child: Text('Email/Password Create',
             style:TextStyle(fontSize: 25) ,),
             ),

            ElevatedButton(onPressed: (){
              signUserEmailAndPassWord();
            },
            style: ElevatedButton.styleFrom(primary: Colors.purple.shade300),
             child: Text('Email/Password Sign',
             style:TextStyle(fontSize: 25) ,),
             ),
             ElevatedButton(onPressed: (){
              signOut();
            },
            style: ElevatedButton.styleFrom(primary: Colors.green.shade300),
             child: Text('Sign Out',
             style:TextStyle(fontSize: 25) ,),
             ),
             ElevatedButton(onPressed: (){
              deleteUser();
            },
            style: ElevatedButton.styleFrom(primary: Colors.yellow.shade400),
             child: Text('Delete User',
             style:TextStyle(fontSize: 25) ,),
             ),
              ElevatedButton(onPressed: (){
              updatePassWord();
            },
            style: ElevatedButton.styleFrom(primary: Colors.blue.shade300),
             child: Text('Update Password',
             style:TextStyle(fontSize: 25) ,),
             ),
          ],
        ),
      ),
      
    );
  }
  
  void createUserEmailAndPassWord() async {

    try{
      var _userCredential= await 
                  auth.createUserWithEmailAndPassword
                       (email: _email, password: _password);
      var _myUser=_userCredential.user;
      if(!_myUser!.emailVerified){
        await _myUser.sendEmailVerification();

      }else{
        debugPrint('User mail is confirmed');
      }
    print(_userCredential.toString());
    }catch(e){
      debugPrint(e.toString());
    }

    

  }
  
  void signUserEmailAndPassWord() async{
     try{
      var _userCredential= await auth.signInWithEmailAndPassword
                    (email: _email, password: _password );
      
    print(_userCredential.toString());
    }catch(e){
      debugPrint(e.toString());
    }
  }
  
  void signOut() async{
     await auth.signOut();
    
  }
  
  void deleteUser() async{
    if(auth.currentUser!=null){
      await auth.currentUser!.delete();
    }else{
      debugPrint('User is not logged in');
    }

  }
  
  void updatePassWord() async{
    try{
      await auth.currentUser!.updatePassword('newPassword');
      await auth.signOut();
    }on FirebaseAuthException
    catch(e){
      if(e.code=='requires-recent-login'){
        var credential=EmailAuthProvider.credential
                            (email: _email, password: _password);
        await auth.currentUser!.reauthenticateWithCredential(credential);
        await auth.currentUser!.updatePassword('password');
        await auth.signOut();
      }
    }catch(e){
      debugPrint(e.toString());
    }
    

  }
}
