import 'package:flutter/material.dart';

class ThirdScreen extends StatelessWidget{
  @override 
  Widget build(BuildContext context){
    return Container(
      child: ListView(
        children: <Widget> [
          ListTile(
            leading: Icon(Icons.map),
            title: Text('Map'),
            onTap: (){
              print('Map');
            },
          ),
          ListTile(
            leading: Icon(Icons.photo_album),
            title: Text('Album'),
            onTap: (){
              print('Album');
            },
          ),
          ListTile(
            leading: Icon(Icons.phone),
            title: Text('Phone'),
            onTap: (){
              print('Phone');
            },
          ),
        ],)
    );
  }
}