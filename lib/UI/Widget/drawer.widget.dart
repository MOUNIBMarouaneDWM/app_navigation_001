import 'package:flutter/material.dart';
class MyDrawer extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [
                        Colors.black87,
                        Colors.purple
                      ]
                  )
              ),
              child: CircleAvatar(
                backgroundImage: AssetImage("assets/1069196.jpg"),
              )
          ),
          ListTile(
            title: Text('Counter',style:TextStyle(fontSize: 22) ,),
            leading: Icon(Icons.home,color: Colors.purple,),
            trailing: Icon(Icons.arrow_right,color: Colors.purple,),
            onTap: (){
              Navigator.of(context).pop();
              Navigator.pushNamed(context, '/counter');
            },
          ),
          Divider(height: 4,color: Colors.grey,),
          ListTile(
            title: Text('Meteo',style:TextStyle(fontSize: 22) ,),
            leading: Icon(Icons.home,color: Colors.purple,),
            trailing: Icon(Icons.arrow_right,color: Colors.purple,),
            onTap: (){
              Navigator.of(context).pop();
              Navigator.pushNamed(context, '/meteo');

            },
          ),
          Divider(height: 4,color: Colors.grey,),
          ListTile(
            title: Text('Galery',style:TextStyle(fontSize: 22) ,),
            leading: Icon(Icons.home,color: Colors.purple,),
            trailing: Icon(Icons.arrow_right,color: Colors.purple,),
            onTap: (){
              Navigator.of(context).pop();
              Navigator.pushNamed(context, '/galery');
            },
          ),
        ],
      ),
    );
  }
}
