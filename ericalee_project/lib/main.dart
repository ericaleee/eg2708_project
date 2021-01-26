import 'package:flutter/material.dart';
import 'drawer.dart';
import 'about.dart';
import 'profile.dart';
import 'setting.dart';

void main() {
  runApp(MaterialApp(home:MyApp()));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    double width=MediaQuery.of(context).size.width;
    double height=MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.indigo[50],
      body: Container(
        height: height,
        width: width,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: width,
                height: height*0.45,
                child: Image.asset('images/login.jpg',fit: BoxFit.fill,),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Login',style: TextStyle(fontSize: 35.0, fontFamily: 'MommyLemon'),),
                  ],
                ),
              ),
              SizedBox(height: 30.0,),
              TextField(
                decoration: InputDecoration(
                  hintText: 'Email',
                  suffixIcon: Icon(Icons.email),
                  enabledBorder: OutlineInputBorder(
                   borderSide: BorderSide(
                    color: Colors.pink[100],
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.purple[100]),
                ),
                contentPadding: const EdgeInsets.all(20),
                ),
              ),
              SizedBox(height: 20.0,),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: 'Password',
                  suffixIcon: Icon(Icons.visibility_off),
                  enabledBorder: OutlineInputBorder(
                   borderSide: BorderSide(
                    color: Colors.pink[100],
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.purple[100]),
                ),
                contentPadding: const EdgeInsets.all(20),
                ),
              ),
              SizedBox(height: 30.0,),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Forget password?',style: TextStyle(fontSize: 12.0),),
                    RaisedButton(
                      child: Text('Log in'),
                      color: Colors.indigo[100],
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Third()));
                      },
                    ),
                  ],
                ),
              ),
              SizedBox(height:20.0),
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Second()));
                },
                child: Text.rich(
                  TextSpan(
                    text: 'Don\'t have an account ',
                    children: [
                      TextSpan(
                        text: 'Sign up',
                        style: TextStyle(
                          color: Colors.red
                        ),
                      ),
                    ]
                  ),
                ),
              ),


            ],
          ),
        ),
      ),
    );
  }
}


class Second extends StatefulWidget {
  @override
  _SecondState createState() => _SecondState();
}

class _SecondState extends State<Second> {
  @override
  Widget build(BuildContext context) {
    double width=MediaQuery.of(context).size.width;
    double height=MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.indigo[50],
      body: Container(
        height: height,
        width: width,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: width,
                height: height*0.45,
                child: Image.asset('images/signup.jpg',fit: BoxFit.fill,),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Sign up',style: TextStyle(fontSize: 35.0, fontFamily: 'MommyLemon'),),
                  ],
                ),
              ),
              SizedBox(height: 30.0,),
              TextField(
                decoration: InputDecoration(
                  hintText: 'Email',
                  suffixIcon: Icon(Icons.email),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                    color: Colors.pink[100],
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.purple[100]),
                ),
                contentPadding: const EdgeInsets.all(20),
                ),
              ),
              SizedBox(height: 20.0,),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: 'Password',
                  suffixIcon: Icon(Icons.visibility_off),
                  enabledBorder: OutlineInputBorder(
                   borderSide: BorderSide(
                    color: Colors.pink[100],
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.purple[100]),
                ),
                contentPadding: const EdgeInsets.all(20),
                ),
              ),
              SizedBox(height: 30.0,),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    RaisedButton(
                      child: Text('Sign up'),
                      color: Colors.indigo[100],
                      onPressed: (){
                         Navigator.push(context, MaterialPageRoute(builder: (context)=>MyApp()));
                      },
                    ),
                  ],
                ),
              ),
              SizedBox(height:20.0),
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>MyApp()));
                },
                child: Text.rich(
                  TextSpan(
                      text: 'Already have an account ',
                      children: [
                        TextSpan(
                          text: 'Sign in',
                          style: TextStyle(
                              color: Colors.red
                          ),
                        ),
                      ]
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Third extends StatefulWidget {
  // This widget is the root of your application.

  @override 
  _ThirdState createState() => _ThirdState();
}

class _ThirdState extends State<Third> { 
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
