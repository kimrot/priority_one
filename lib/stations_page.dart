import 'package:flutter/material.dart';
import 'package:priority_one/dashboard.dart';

class StationsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(30)
            )
          ),
        title: Text("Stations"),
      ),
      
      body: Center(
        child: RaisedButton(
          onPressed: () {
           Navigator.push(context, MaterialPageRoute(builder: (context){
           return DashboardPage();
         })
         );
          },
          child: Text('Stations we Comin Soon!...'),
        ),
      ),
      
    );
  }
}