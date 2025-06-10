import 'package:flutter/material.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {

  var dspText = "Hello World";
  var iconClrLike = Colors.black;
  var iconClrDislike = Colors.black;

  void changeText(){
    setState(() {
      dspText = "Good Morning";
    });
  }

  void changeTextHello(){
    setState(() {
      dspText = "Hello World";
    });
  }

  void changeClrLike(){
    setState(() {
      if(iconClrLike == Colors.black){
        iconClrLike = Colors.blue;
      }
      else{
        iconClrLike = Colors.black;
      }
    });
  }

  void changeClrDislike(){
    setState(() {
      if(iconClrDislike == Colors.black){
        iconClrDislike = Colors.red;
      }
      else{
        iconClrDislike = Colors.black;
      }
    });
  }

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
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                dspText,
                style: TextStyle(fontSize: 30),
              ),
              ElevatedButton(onPressed: (){
                changeText();
              }, 
              child: Text("Good Morning",style: TextStyle(fontSize: 20),)
              ),
              ElevatedButton(onPressed: (){
                changeTextHello();
              }, 
              child: Text("Hello World",style: TextStyle(fontSize: 20),)
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                  onPressed: (){
                    changeClrLike();
                  }, 
                  icon: Icon(Icons.thumb_up), 
                  iconSize: 30,
                  color: iconClrLike,
                  ),

                  IconButton(
                  onPressed: (){
                    changeClrDislike();
                  }, 
                  icon: Icon(Icons.thumb_down), 
                  iconSize: 30,
                  color: iconClrDislike,
                  ),
                ],
              )

            ],
          ),
        )
      );
  }
}