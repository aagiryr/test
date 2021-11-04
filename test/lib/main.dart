import 'package:flutter/material.dart';
import 'package:super_hero/super_hero.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My App",
      home: SuperHeroNameGenerator());
  }
}

class SuperHeroNameGenerator extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _SuperHeroName();
}

class _SuperHeroName extends State<SuperHeroNameGenerator> {
  final _SuperHeroName = <String>[];
  final _hearted = <String>{} ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Wilkommen"),
      ),
      body: Widget _buildBody(),
    );
  }

  Widget _buildBody() {
    return ListView.builder(
        padding, itemBuilder: (BuildContext context, int index) {  },: Edgeninsets.all(16)
    itemBuilder: (context, i) {
          if(i.isOdd){
            return Divider();
          }
          if(i ~/ 2 >= _SuperHeroName.length){
            _SuperHeroName.addAll(_generateSuperheroNames()):
          }
          return _buildRow(_SuperHeroName[i ~/ 2]);
    }
    );
  }


}