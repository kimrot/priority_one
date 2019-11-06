import 'package:flutter/material.dart';
import 'package:priority_one/dashboard.dart';


class UsersPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(30)
            )
          ),
        title: Text("User Management"),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
           Navigator.push(context, MaterialPageRoute(builder: (context){
           return DashboardPage();
         })
         );
          },
          child: Text('Users we Comin Soon!...'),
        ),
      ),
    );

    
  }
}

