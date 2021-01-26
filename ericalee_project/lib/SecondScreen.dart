import 'package:flutter/material.dart';

class MyData {
  final String firstName;
  final String lastName;
  MyData(this.firstName, this.lastName);
}

class SecondScreen extends StatelessWidget{
  @override 
  Widget build(BuildContext context){
    return Container(
      child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget> [
            new Text(
              'Second Screen',
            ),
            Icon(Icons.directions_transit),
          ],
      ),
    );
  }
}