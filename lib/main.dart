import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    title: "Frases do dia",
    home: Container(
      color: Colors.white,
      child: Column(
        children: <Widget>[
          Text(
              "texto 1",
            style: TextStyle(
              fontSize: 35,
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.bold,
              letterSpacing: 0,
              wordSpacing: 0,
              decoration: TextDecoration.none,
              decorationColor: Colors.black,
              decorationStyle: TextDecorationStyle.solid,
              color: Colors.black
            ),
          )
        ],
      ) ,
    ),

  ));
}