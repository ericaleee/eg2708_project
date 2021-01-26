import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'features.dart';

class Setting extends StatelessWidget {
  @override 
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.indigo[50],
      body: 
          Padding(
                padding: const EdgeInsets.all(10.0),       
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    RaisedButton(
                      child: Text('View More'),
                      color: Colors.indigo[100],
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Features()));
                      },
                    ),
                    SizedBox(height: 30.0,),
                    contentBody,
                  ],
                ),
              ),    
              );
  }
}


class MyCustomWidget extends StatelessWidget {
  // all properties must declare with final or const
  final String name;

  // class constructor
  MyCustomWidget(this.name);
  @override 
  Widget build(BuildContext context){
    return Center(child: Container(
      decoration: BoxDecoration(
        color: Colors.pink[100],
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          bottomRight: Radius.circular(20),
        )
      ),
      margin: const EdgeInsets.all(10.0),
      width: 300.0,
      height: 100.0,
      child: Center( child: Text( '$name',
      textDirection: TextDirection.ltr,
      style: TextStyle(color: Color(0xFF000000),
      fontSize: 40,
      fontFamily: 'alltheroll'
      )
      ),
      ),
    ),
    );
  }
}

// separate content from the app classes

var contentBody =
Center(child: Column(
  mainAxisAlignment: MainAxisAlignment.center,
  children: <Widget>[
    MyCustomWidget('Taxi Availability'),
    MyCustomWidget('Bicycle Parking'),
    MyCustomWidget('Weather Forecast'),
  ]
),
);


   