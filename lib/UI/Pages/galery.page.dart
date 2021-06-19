import 'package:app_001/UI/Widget/drawer.widget.dart';
import 'package:flutter/material.dart';

import '../../main.dart';

class GaleryPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer:MyDrawer() ,
      appBar: AppBar(title: Text('Galery'),),
      body:Center(
        child: Text('Galery Page',
          style:TextStyle(
              color: Colors.purple,
              fontSize: 30),
        ),
      ),
    );
  }
}