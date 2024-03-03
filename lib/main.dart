import 'package:donextui6_2/home_page.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      color: Colors.blueAccent,
      home: MyHomePage(),
      theme: ThemeData(
        backgroundColor: Colors.grey,
      ),
    );
  }
}
