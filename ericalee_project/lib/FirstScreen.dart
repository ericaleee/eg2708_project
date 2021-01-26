import 'package:flutter/material.dart';
import 'about.dart';
import 'main.dart';
import 'drawer.dart';

class FirstScreen extends StatelessWidget{
  @override 
  Widget build(BuildContext context){
    return Container(
      child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget> [
             Padding(
                padding: const EdgeInsets.all(20.0),       
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    RaisedButton(
                      child: Text('Back'),
                      color: Colors.indigo[100],
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Third()));
                      },
                    ),
                  ],
                ),
              ),
          ],
      ),
    );
  }
}