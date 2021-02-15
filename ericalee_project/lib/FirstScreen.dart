import 'package:ericalee_project/ThirdScreen.dart';
import 'package:flutter/material.dart';
import 'about.dart';
import 'main.dart';
import 'drawer.dart';
import 'signin.dart';
import 'home.dart';

class FirstScreen extends StatelessWidget{
  @override 
  Widget build(BuildContext context){
    return Container(
      child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget> [
             Padding(
                padding: const EdgeInsets.all(20.0),       
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('images/flag_down_fares.jpg',),
                    RaisedButton(
                      child: Text('Back'),
                      color: Colors.indigo[100],
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Home())); 
                        
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