import 'package:flutter/material.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //App Bar
        appBar: AppBar(
          title: Text("Learn Flutter"),
          centerTitle: true,

          //BG Color
          backgroundColor: Colors.green,

          //Leading
          leading: Icon(Icons.home),

          //Actions
          actions: [
            IconButton(onPressed: (){}, icon: Icon(Icons.search)),
            IconButton(onPressed: (){}, icon: Icon(Icons.more_vert))
          ],

          //Shape
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(30))),
          
          //Elevation
          //elevation: 100,

        ),

        drawer: Drawer(
          backgroundColor: Colors.green,
          child: ListView(
            children: [
              UserAccountsDrawerHeader(
                accountName: Text("Virat Kohli"), 
                accountEmail: Text("viratkohli@email.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: AssetImage('images/virat.jpg'),
                ),
                ),
                
              ListTile(
                leading: Icon(Icons.person),
                iconColor: Colors.white,
                title: Text("Profile",
                  style: TextStyle(fontSize: 18, color: Colors.white)
                ),
                onTap: () {},
              ),

              ListTile(
                leading: Icon(Icons.settings),
                iconColor: Colors.white,
                title: Text("Settings",
                  style: TextStyle(fontSize: 18, color: Colors.white)
                ),
                onTap: () {},
              ),
              
              ListTile(
                leading: Icon(Icons.dashboard),
                iconColor: Colors.white,
                title: Text("Dash Board",
                  style: TextStyle(fontSize: 18, color: Colors.white)
                ),
                onTap: () {},
              ),

              ListTile(
                leading: Icon(Icons.exit_to_app),
                iconColor: Colors.white,
                title: Text("Sign Out",
                  style: TextStyle(fontSize: 18, color: Colors.white)
                ),
                onTap: () {},
              ),

            ],
          ),
        ),

        body: null
      );
  }
}