import 'package:flutter/material.dart';
import 'dart:developer';

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
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextButton(
                style: ButtonStyle(
                  textStyle: WidgetStateProperty.all((
                    TextStyle(
                      fontSize: 30,
                    )
                  )),
                  foregroundColor: WidgetStateProperty.all(Colors.red)
                ),
                onPressed: (){},
               child: Text("Text Button")),

               TextButton.icon(
                style: ButtonStyle(
                  textStyle: WidgetStateProperty.all((
                    TextStyle(
                      fontSize: 30,
                    )
                  )),
                  foregroundColor: WidgetStateProperty.all(Colors.red)
                ),
                onPressed: (){},
               icon: Icon(Icons.home),
               label: Text("Home"),
               ),

               ElevatedButton(
                style: ButtonStyle(
                  shape: WidgetStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)
                      )
                    ),
                  padding: WidgetStateProperty.all(EdgeInsets.only(
                    left: 50,
                    right: 50,
                    top: 20,
                    bottom: 20
                  )),
                  foregroundColor: WidgetStateProperty.all(Colors.yellow),
                  backgroundColor: WidgetStateProperty.all(Colors.purple),
                  //minimumSize:WidgetStateProperty.all(Size(200, 40)),
                  textStyle: WidgetStateProperty.all(
                    TextStyle(
                      fontSize: 30,
                    )
                  )
                ),
                onPressed: (){
                  log("message");
                },
                onLongPress: () {
                  log("long press");
                },
                child: Text("Sign In")
                ),

                OutlinedButton(
                  style: ButtonStyle(
                    shape: WidgetStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)
                      )
                    ),
                    side: WidgetStateProperty.all(BorderSide(
                      color: Colors.blueAccent,
                      width: 5,
                    )),
                    textStyle: WidgetStateProperty.all(
                      TextStyle(
                        fontSize: 35
                      )
                    ),
                    minimumSize: WidgetStateProperty.all(Size(200, 50)),
                    foregroundColor: WidgetStateProperty.all(Colors.blueAccent)
                  ),
                  onPressed: (){

                  }, 
                  child: Text("Sign Up"))
            ],
          ),
        )
      );
  }
}