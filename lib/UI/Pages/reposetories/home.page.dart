import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;


class GitRepositoriesPage extends StatefulWidget {
  String login;
  GitRepositoriesPage({this.login});

  @override
  _GitRepositoriesPageState createState() => _GitRepositoriesPageState();
}

class _GitRepositoriesPageState extends State<GitRepositoriesPage> {
  dynamic dataRepositories;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    LaodRepo();
  }
  Future<void> LaodRepo() async {
    String url ='https://api.github.com/users/${widget.login}/repos';
    http.Response respance= await http.get(Uri.parse(url));
    if( respance.statusCode==200){
      setState(() {
        dataRepositories=json.decode(respance.body);
      });
    }


  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Repositories de ${widget.login}'),),
      body:Center(
        child: ListView.separated(
            itemBuilder: (context,index)=>ListTile(
              title: Text("${dataRepositories[index]['name']}"),
            ),
            separatorBuilder:(context,index)=>Divider(
              height: 2,
              color: Colors.purple ,
            ) ,
            itemCount: dataRepositories==null?0:dataRepositories.length
        ),
      ),
    );
  }

}