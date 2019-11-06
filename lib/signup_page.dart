import 'package:flutter/material.dart';
import 'package:priority_one/login_page.dart';
import 'package:priority_one/dashboard.dart';

class Signup extends StatefulWidget {
  static String tag = 'signup_page';
  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
      final logo = Hero(
        tag: 'hero',
        child: CircleAvatar(
          backgroundColor: Colors.transparent,
          radius: 120,
          child: Image.asset('assets/logo/logo.jpg'),
        ),
        
      );
       final username = TextFormField(
         keyboardType: TextInputType.text,
         autofocus: false,
         decoration: InputDecoration(
           prefixIcon: Icon(Icons.people),
         hintText: 'Name',
         contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
         border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),

       ),

     );

     final email = TextFormField(
         keyboardType: TextInputType.emailAddress,
         autofocus: false,
         decoration: InputDecoration(
           prefixIcon: Icon(Icons.email),
         hintText: 'Email',
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

     final signupButton = Padding(
       padding: EdgeInsets.symmetric(vertical: 16),
       child: RaisedButton(
         shape: RoundedRectangleBorder(
           borderRadius: BorderRadius.circular(24),
           ),
           onPressed: (){
           Navigator.push(context, MaterialPageRoute(builder: (context){
           return DashboardPage();
         })
         );
           },
           padding: EdgeInsets.all(12),
           color: Colors.green,
           child: Text('Signup', style: TextStyle(color: Colors.white, fontSize:17.0)),
       ),
     );

     final forgotLabel = FlatButton(
       child: Text('Already have an Account? Click here',style: TextStyle(color: Colors.blue, fontSize: 15),
       ),
       onPressed: (){
         Navigator.push(context, MaterialPageRoute(builder: (context){
           return LoginPage();
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
           username,
           SizedBox(height:15),
           email,
           SizedBox(height:15),
           password,
           SizedBox(height: 24),
           signupButton,
           forgotLabel],
         ),
       ),
     );
  }
}