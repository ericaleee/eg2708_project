import 'package:flutter/material.dart';


class ThirdScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
       
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: <Widget>[
                    Text('Singapore', style: new TextStyle(color: Colors.white)),
                    Text('Sunny', style: new TextStyle(color: Colors.white, fontSize: 32.0)),
                    Text('32°C',  style: new TextStyle(color: Colors.white)),
                    Image.network('https://openweathermap.org/img/w/01d.png'),
                    Text('Feb 9, 2021', style: new TextStyle(color: Colors.white)),
                    Text('10:22', style: new TextStyle(color: Colors.white)),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: IconButton(
                  icon: new Icon(Icons.refresh),
                  tooltip: 'Refresh',
                  onPressed: () => null,
                  color: Colors.white,
                ),
              )
            ]
          )
        )
      ),
    );
  }
}