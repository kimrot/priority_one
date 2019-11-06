import 'package:flutter/material.dart';
import 'package:priority_one/settings_page.dart';
import 'package:priority_one/stations_page.dart';
import 'package:priority_one/users_page.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';



class DashboardPage extends StatelessWidget {
  int get crossAxisCellCount => 2;

  

  @override
  Widget build(BuildContext context) {
   
   Material myItems(IconData icon,String heading, int color,){
     return Material(
       color: Colors.white,
       elevation: 14.0,
       shadowColor: Colors.grey,
       borderRadius: BorderRadius.circular(16.0),
       child: Center(
         child: Padding(
           padding: EdgeInsets.all(2.0),
           child: Row(
             mainAxisAlignment: MainAxisAlignment.center,
             children: <Widget>[
               Column(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: <Widget>[
                   Padding(
                     padding: const EdgeInsets.all(2.0),
                     child: Text(heading,style:TextStyle(
                       color:Colors.blue,
                       fontSize:20.0,
                     )
                     ),
                   ),

                   Material(
                     color:Color(color),
                     borderRadius: BorderRadius.circular(32),
                     child: Padding(
                       padding: EdgeInsets.all(16),
                       child: Icon(
                         icon, color:Colors.white,
                         size:24,
                       ),
                     ),
                   )
                 ],
               )
             ],
           ),
         ),
       ),

     );
   }



    
    final drawerHeader = UserAccountsDrawerHeader(
      
      accountName: Text('Name'),
      accountEmail: Text('user.name@email.com'),
      currentAccountPicture: CircleAvatar(
        child: FlutterLogo(size: 42.0),
        backgroundColor: Colors.white,
      )
      );
      
    final drawerItems = ListView(
      children: <Widget>[
        drawerHeader,
        ListTile(
          selected: true,
          leading: Icon(Icons.person,size: 40,color: Colors.green,),
          title: Text('Users',style:TextStyle(
            fontSize: 20,

          ),),
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context){
           return UsersPage();
         })
         );
          } 
        ),
          ListTile(
          selected: true,
          leading: Icon(Icons.location_on,size: 40,color: Colors.green,),
          title: Text('Stations',style:TextStyle(
            fontSize: 20,

          ),),
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context){
           return StationsPage();
         })
         );
          } //=> Navigator.of(context).push(_NewPage(1)),
        ),
        ListTile(
          selected: true,
          leading: Icon(Icons.build,size: 40,color: Colors.green,),
          title: Text('Settings',style:TextStyle(
            fontSize: 20,

          ),),
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context){
           return SettingsPage();
         })
         );
          } //=> Navigator.of(context).push(_NewPage(1)),
        ),
      ],
    );
    return Scaffold(
        appBar: AppBar(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(30)
            )
          ),
          backgroundColor: Colors.blue,
          title: Text('Dashboard',style: TextStyle(
            color: Colors.white,),),
          
        ),
        body: StaggeredGridView.count(
            crossAxisCount: 2,
            crossAxisSpacing: 12,
            mainAxisSpacing: 12,
            padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            children: <Widget>[
              myItems(Icons.graphic_eq, "Total Views",0xffe57373), 
              myItems(Icons.location_on, "Stations",0xff81c784),
              myItems(Icons.settings, "Settings",0xff64b5f6),
              myItems(Icons.history, "History",0xff64b5f6),
              myItems(Icons.report, "Reports",0xff4dd0e1),
              myItems(Icons.wifi, "Wifi",0xff000000),
              myItems(Icons.graphic_eq, "Users",0xffe0e0e0),
              myItems(Icons.graphic_eq, "Vehicles",0xffba68c8),
              myItems(Icons.bluetooth, "Bluetooth",0xfff176),
              myItems(Icons.history, "History",0xff64b5f6),
              myItems(Icons.report, "Reports",0xff4dd0e1),
              myItems(Icons.graphic_eq, "Routes",0xff000000),
              myItems(Icons.graphic_eq, "Users",0xffe0e0e0),
              myItems(Icons.graphic_eq, "Vehicles",0xffba68c8),
              myItems(Icons.graphic_eq, "Towns",0xfff06292),
              myItems(Icons.graphic_eq, "Cities ",0xffffb74d),
            ],
            staggeredTiles: [
              StaggeredTile.extent(2, 120.0),
              StaggeredTile.extent(1, 120.0),
              StaggeredTile.extent(1, 120.0),
              StaggeredTile.extent(1, 200.0),
              StaggeredTile.extent(1, 100.0),
              StaggeredTile.extent(1, 120.0),
              StaggeredTile.extent(1, 180.0),
              StaggeredTile.extent(2, 120.0),
              StaggeredTile.extent(1, 90.0),
              StaggeredTile.extent(1, 120.0),
              StaggeredTile.extent(1, 140.0),
              StaggeredTile.extent(1, 120.0),
              StaggeredTile.extent(1, 120.0),
              StaggeredTile.extent(1, 90.0),
              StaggeredTile.extent(2, 200.0),
              StaggeredTile.extent(2, 140.0)
            ],
          
        ),

        
        drawer: Drawer(
          child: drawerItems,
        ));
  }
}




