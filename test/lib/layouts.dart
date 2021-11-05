import 'package:flutter/cupertino.dart';

Widget mainWidget(){
  return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Image.network("https://picsum.photos/100"),
        Image.network("https://picsum.photos/100"),
        Image.network("https://picsum.photos/100"),
      ]
  );
}