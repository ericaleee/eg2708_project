import 'package:flutter/material.dart';
import 'main.dart';

class MyDrawer extends StatelessWidget {
  final Function onTap;
  MyDrawer({this.onTap});

  @override 
  Widget build(BuildContext context){
    return SizedBox( 
      width: MediaQuery.of(context).size.width * 0.8,
      child: Drawer( 
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget> [
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.indigo[200]),
              child: Padding( 
                padding: EdgeInsets.all(6),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Container( 
                      width: 60,
                      height: 60,
                      child: Container( 
                        height: 72.0,
                        width: 72.0,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                        image: AssetImage('images/jungkook.jpeg'),
                        fit: BoxFit.contain,
                      ),))
                    ),
                    SizedBox(height: 15,),
                    Text('Super Hero',
                    style: TextStyle(
                      fontFamily: 'MommyLemon',
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.black)
                    ),
                    SizedBox(height: 3),
                    Text('super_hero@nyp.edu.sg',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                    ),
                    ),
                  ],
                ),
              ),
            ),
            ListTile( 
              leading: Icon(Icons.home),
              title: Text('About'),
              onTap: () => onTap(context, 0, ' About'),
            ),
            ListTile( 
              leading: Icon(Icons.person),
              title: Text('Profile'),
              onTap: () => onTap(context, 1, ' Profile'),
            ),
            ListTile( 
              leading: Icon(Icons.featured_play_list),
              title: Text('Features'),
              onTap: () => onTap(context, 2, ' Available Features'),
            ),
            ListTile( 
              leading: Icon(Icons.exit_to_app),
              title: Text('Logout'),
              onTap: () { Navigator.push(context, MaterialPageRoute(builder: (context)=>MyApp()));},
            ),
          ],
        )
      )
    );
  }
}