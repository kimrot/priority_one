
import 'package:flutter/material.dart';
import 'package:priority_one/dashboard.dart';
import 'package:priority_one/signup_page.dart';


  class LoginPage extends StatefulWidget {
     static String tag = 'Login-page';
    
    @override
    _LoginPageState createState() => _LoginPageState();
  }
  

  bool validate = false;
 
  class _LoginPageState extends State<LoginPage> {
    @override
    Widget build(BuildContext context) {
      final logo = Hero(
        tag: 'hero',
        child: CircleAvatar(
          backgroundColor: Colors.transparent,
          radius: 100,
          child: Image.asset('assets/logo/logo.jpg'),
        ),
        
      );

     final email = TextFormField(
         keyboardType: TextInputType.emailAddress,
         autofocus: false,
         decoration: InputDecoration(
         prefixIcon: Icon(Icons.email),
         hintText: 'Username',
         contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
         border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),

       ),

     );

     final password = TextFormField(
         autofocus: true,
         obscureText: true,
         decoration: InputDecoration(
         prefixIcon: Icon(Icons.lock),
         hintText: 'Password',
         contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
         border: OutlineInputBorder(
           borderRadius: BorderRadius.circular(30)),
       ),
     );

     final loginButton = Padding(
       padding: EdgeInsets.symmetric(vertical: 16),
       child: RaisedButton(
         shape: RoundedRectangleBorder(
           borderRadius: BorderRadius.circular(24),
           ),
           
           padding: EdgeInsets.all(12),
           color: Colors.green,
           child: Text('Login', style: TextStyle(color: Colors.white, fontSize:17.0)),

           onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context){
           return DashboardPage();
         })
         );
           },
       ),
     );

     final forgotLabel = FlatButton(
       child: Text('Dont have an Account? Sign Up',style: TextStyle(color: Colors.blue, fontSize: 15),
       ),
       onPressed: (){
           Navigator.push(context, MaterialPageRoute(builder: (context){
           return Signup();
         })
         );
       },
     );

     return Scaffold(
       backgroundColor: Colors.white,
       body: Center(
         child: ListView(
           shrinkWrap: true,
           padding: EdgeInsets.only(left: 24.0,right: 24.0),
           children: <Widget>[logo,
           SizedBox(height: 50,),
           email,
           SizedBox(height:15),
           password,
           SizedBox(height: 24),
           loginButton,
           forgotLabel],
         ),
       ),
     );

    }
  }
  