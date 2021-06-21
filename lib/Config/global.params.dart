import 'package:flutter/material.dart';

class GlobalParams{
  static List<Map<String,dynamic>> menus=[
    {"title":"Counter","icon":Icon(Icons.album_sharp,color: Colors.purple),"route":"/counter"},
    {"title":"meteo","icon":Icon(Icons.ac_unit,color: Colors.purple),"route":"/meteo"},
    {"title":"galery","icon":Icon(Icons.camera,color: Colors.purple),"route":"/gallery"}
  ];
}