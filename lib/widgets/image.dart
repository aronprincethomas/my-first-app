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

        body: Center(
          child: Column(
            children: [
              Container(
                height: 300,
                  width: 300,
                  // color: Colors.orange,
                child: Image.asset(
                  'images/dogs.jpeg',
                  fit: BoxFit.fitWidth,
                  ),
              ),
              /*Container(
                height: 300,
                  width: 300,
                  // color: Colors.redAccent,
                child: Image.asset(
                  'images/cats.jpeg',
                  fit: BoxFit.fitWidth,
                  ),
              ),*/
              Container(
                height: 300,
                width: 300,
                child: Image.network(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSYrRRbKv7V5wxI9HeywAnYR5NA-Gku19ak1Q&s',
                  fit: BoxFit.fitWidth,
                  ),
                
              )
            ],
          ),
        )
      );
  }
}