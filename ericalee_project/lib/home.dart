import 'package:flutter/material.dart';
import 'about.dart';
import 'profile.dart';
import 'setting.dart';
import 'drawer.dart';

class Home extends StatefulWidget {
  // This widget is the root of your application.

  @override 
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> { 
  String title = 'About';
  int index = 0;
  List<Widget> list = [About(), Profile(), Setting()];

  @override
  Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: Text(title,
          style: TextStyle(
            fontFamily: 'colorado',
            color: Colors.black,
            fontSize: 35,
          )),
          backgroundColor: Colors.indigo[200],
        ),
        // body: Home(),
        // drawer: MyDrawer(),
        body: list[index],
        drawer: MyDrawer (onTap: (context, i, txt){
          setState(() {index = i;
          title = txt;
          Navigator.pop(context);});
        })
      
    );
  }
  }