import 'package:flutter/material.dart';
import 'package:super_hero/super_hero.dart';
import 'package:test/detailedSuperHeroInfo.dart';
import 'package:test/layouts.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "My App",
        home: SuperHeroNameGenerator());
  }
}

class SuperHeroNameGenerator extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _SuperHeroName();
}
class _SuperHeroName extends State<SuperHeroNameGenerator> {
  final _superHeroName = <String>[];
  final _hearted = <String>{};




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Wilkommen"),
      ),
      body: mainWidget()//_buildBody(),
    );
  }

  Widget _buildBody() {
    return ListView.builder(
        padding: EdgeInsets.all(16),

        itemBuilder: (context, i) {
          if (i.isOdd) {
            return Divider();
          }
          if (i ~/ 2 >= _superHeroName.length) {
            _superHeroName.addAll(_generateSuperheroNames());
          }
          return _buildRow(_superHeroName[i ~/ 2]);
        }
    );
  }

  Iterable<String> _generateSuperheroNames() {
    List<String> myNames = [
      SuperHero.random(),
      SuperHero.random(),
      SuperHero.random(),
      SuperHero.random(),
      SuperHero.random(),
      SuperHero.random(),
      SuperHero.random(),
      SuperHero.random(),
      SuperHero.random(),
      SuperHero.random(),
      SuperHero.random(),
    ];

    return myNames;
  }











  Widget _buildRow(String superHeroName) {
    final _markedFav = _hearted.contains(superHeroName);
    return ListTile(
      title: Text(superHeroName),
      trailing: Icon(
        _markedFav ? Icons.favorite : Icons.favorite_border,
        color: _markedFav ? Colors.red : null,
      ),
      onTap: (){
        setState(() {
          _markedFav ? _hearted.remove(superHeroName) : _hearted.add(superHeroName);
        });
      },
      onLongPress: () {
        _pushExample(superHeroName);
      },
    );
  }

  void _pushExample(String superHeroName) {
    Navigator.of(context).push(
      MaterialPageRoute<void>(builder:(BuildContext context){
        return superHeroInfo(superHeroName);
      }),
    );
  }
}

