import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget superHeroInfo(String _superHeroName) {
return  Scaffold(
    appBar: AppBar(
      title: Text(_superHeroName),
    ),
    body: Column(

        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text("Hallo"),
          Text(_superHeroName),


          Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,

              children: [


                Image.network("https://picsum.photos/100"),
                Image.network("https://picsum.photos/100"),
                Image.network("https://picsum.photos/100"),
              ]
          ),
          Row(

              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [


                Image.network("https://picsum.photos/100"),
                Image.network("https://picsum.photos/100"),
                Image.network("https://picsum.photos/100"),
              ]

          )
        ]
    ),
  );
}