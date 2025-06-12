import 'package:flutter/material.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {

  String? gender;
  String? status;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //App Bar
        appBar: AppBar(
          title: Text("Radio Button"),
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

        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              Container(
                color: Colors.amberAccent,
                child: Column(
                  children: [
                    Text("Select Your Gender", style: TextStyle(fontSize: 20),),

                    ListTile(
                      title: Text("Male"),
                      leading: Radio(value: "male", 
                      groupValue: gender, 
                      onChanged: (value){
                        setState(() {
                          gender = value;
                        });
                      }),
                    ),
                    ListTile(
                      title: Text("Female"),
                      leading: Radio(value: "Female", 
                      groupValue: gender, 
                      onChanged: (value){
                        setState(() {
                          gender = value;
                        });
                      }),
                    ),
                    ListTile(
                      title: Text("Other"),
                      leading: Radio(value: "Other", 
                      groupValue: gender, 
                      onChanged: (value){
                        setState(() {
                          gender = value;
                        });
                      }),
                    ),
                    Text("$gender",style: TextStyle(fontSize: 20),),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                  color: Colors.amberAccent,
                  child: Column(
                    children: [
                      Text("Marital Status", style: TextStyle(fontSize: 20),),
                
                      RadioListTile(
                        activeColor: Colors.lightGreen,
                        title: Text("Married"),
                        value: "married", 
                        groupValue: status, 
                        onChanged: (value){
                          setState(() {
                            status = value;
                          });
                      }),
                      RadioListTile(
                        activeColor: Colors.red,
                        title: Text("Unmarried"),
                        value: "unmarried", 
                        groupValue: status, 
                        onChanged: (value){
                          setState(() {
                            status = value;
                          });
                      }),
                      Text("$status",style: TextStyle(fontSize: 20),),
                    ],
                  ),
                ),
              )
            ],
          ),
        )
      );
  }
}