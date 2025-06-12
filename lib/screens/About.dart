import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("About Page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("About Page", style: TextStyle(fontSize: 30),),
          ElevatedButton(
            onPressed: (){
              Navigator.pop(context);
            }, 
            child: Text("Home"))
        ],
        )
      ),
    );
  }
}