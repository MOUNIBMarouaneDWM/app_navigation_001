import 'package:app_001/UI/Pages/galery.page.dart';
import 'package:app_001/UI/Pages/meteo.page.dart';
import 'package:flutter/material.dart';

import 'UI/Pages/counter.page.dart';
import 'UI/Pages/git_users.page.dart';
import 'UI/Pages/home.page.dart';


void main()=>runApp( MyApp());


class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/home':(context)=>HomePage(),
        '/gitUsers':(context)=>GitUsersPage(),
        '/meteo':(context)=>MeteoPage(),
        '/gallery':(context)=>GaleryPage(),
        '/counter':(context)=>CounterPage(),
      },
      theme: ThemeData(primarySwatch: Colors.purple),
      home: HomePage(),
      initialRoute: '/gitUsers',
    );
  }
}






