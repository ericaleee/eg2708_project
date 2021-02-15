import 'package:ericalee_project/authentication.dart';
import 'package:flutter/material.dart';
import 'home.dart';
import 'authentication.dart';
import 'user.dart';
import 'package:provider/provider.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {


    final user = Provider.of<User>(context);
    print(user);

    //return either home or authenticate widget
     if (user == null){
       return Authenticate();
     } else{
       return Home();
     }
  }
}