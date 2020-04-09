import 'package:flutter/material.dart';
import 'package:hi2/choice.dart';
// import 'package:hi2/homepages.dart';
// import 'package:hi2/homepages2.dart';



void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',

      debugShowCheckedModeBanner: false,
      
      theme: ThemeData(
        
        primarySwatch: Colors.blue,
      ),
      home: Choice (),
    );
  }
}

