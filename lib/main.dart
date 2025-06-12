import 'package:flutter/material.dart';
import 'package:my_first_app/screens/Home.dart';
import 'package:my_first_app/screens/Product.dart';
import 'package:my_first_app/screens/About.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Demo App",
      routes: {
        '/':(context) => HomeWidget(),
        '/Product':(context) => ProductScreen(),
        '/About':(context) => AboutScreen(),
      },
      initialRoute: '/',
    );
  }
}