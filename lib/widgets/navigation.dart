import 'package:flutter/material.dart';
import '../screens/About.dart';
import '../screens/Product.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //App Bar
        appBar: AppBar(
          title: Text("Navigation - Home"),
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

        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: (){
                  Navigator.push(
                    context, MaterialPageRoute(builder: (context)=>ProductScreen())
                  );
                }, 
                child: Text("Product Page",
                  style: TextStyle(fontSize: 20),
                )
              ),
              ElevatedButton(
                onPressed: (){
                  Navigator.push(
                    context, MaterialPageRoute(builder: (context)=>AboutScreen())
                  );
                }, 
                child: Text("About Page",
                  style: TextStyle(fontSize: 20),
                )
              ),
            ],
          ),
        )
      );
  }
}