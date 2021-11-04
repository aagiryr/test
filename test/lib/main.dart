import 'package:flutter/material.dart';
import 'package:super_hero/super_hero.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My App",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Wilkommen"),
        ),
        body: Center(
          child: Text(SuperHero.random()),
        ),
      ),
    );
  }
}