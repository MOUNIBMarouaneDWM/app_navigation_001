import 'package:app_001/UI/Widget/drawer.widget.dart';
import 'package:flutter/material.dart';

import '../../main.dart';

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer:MyDrawer(),
      appBar: AppBar(title: Text('Home'),),
      body:Center(
        child: Text('Home Page',
          style:TextStyle(
              color: Colors.purple,
              fontSize: 30),
        ),
      ),
    );
  }
}