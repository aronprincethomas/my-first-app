import 'package:flutter/material.dart';
import 'package:my_first_app/widgets/tabbar.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Demo App",
      home: MyWidget()
    );
  }
}