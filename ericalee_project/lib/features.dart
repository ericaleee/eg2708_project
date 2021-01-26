import 'package:flutter/material.dart';
import 'main.dart';
import 'about.dart';

import 'FirstScreen.dart';
import 'SecondScreen.dart';
import 'ThirdScreen.dart';


class Features extends StatelessWidget {
  //initialize the data

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     home: DefaultTabController(
       length: 3,
       child: Scaffold(
         appBar: AppBar(
           bottom: TabBar(tabs: [
             Tab(icon: Icon(Icons.local_taxi, color:Colors.yellowAccent,)),
              Tab(icon: Icon(Icons.directions_bike, color:Colors.greenAccent,)),
               Tab(icon: Icon(Icons.thermostat_outlined, color: Colors.redAccent)),
           ],
     ),
     title: Text(' Features', style: TextStyle(color: Colors.black, fontFamily: 'colorado', fontSize: 35,)),
     backgroundColor: Colors.indigo[200],
    ),
    body: TabBarView(children: [
      // Icon(Icons.directions_car),
      // Icon(Icons.directions_transit),
      // Icon(Icons.directions_bike),
      FirstScreen(),
      SecondScreen(),
      ThirdScreen(),
    ],),),),
    );
  }
}

