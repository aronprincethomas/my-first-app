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

        body: ListView(
          children:[ 
            Center(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: CircleAvatar(
                    radius: 85,
                    backgroundColor: Colors.black,
                    child: CircleAvatar(
                      radius: 80,
                      backgroundColor: Colors.green,
                      child: Text("Sign in",style: TextStyle(fontSize: 30),),
                      foregroundColor: Colors.white,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: CircleAvatar(
                    radius: 80,
                    child: Icon(Icons.verified_user,size: 50,),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: CircleAvatar(
                    radius: 80,
                    backgroundImage: AssetImage('images/virat.jpg'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: CircleAvatar(
                    radius: 85,
                    backgroundColor: Colors.black,
                    child: CircleAvatar(
                      radius: 80,
                      backgroundColor: Colors.green,
                      child: Text("Sign in",style: TextStyle(fontSize: 30),),
                      foregroundColor: Colors.white,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: CircleAvatar(
                    radius: 80,
                    backgroundImage: AssetImage('images/virat.jpg'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: CircleAvatar(
                    radius: 80,
                    backgroundImage: NetworkImage('https://www.greaterkashmir.com/wp-content/uploads/2024/06/Rohit-Sharma.jpg'),
                  ),
                )
              ],
            ),
          ),
          ],
        )
      );
  }
}