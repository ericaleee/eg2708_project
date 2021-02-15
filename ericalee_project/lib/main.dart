import 'package:ericalee_project/wrapper.dart';
import 'package:flutter/material.dart';
import 'auth.dart';
import 'wrapper.dart';
import 'package:provider/provider.dart';
import 'user.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamProvider<User>.value(
      value: AuthService().user,
      child: MaterialApp(
      home: Wrapper(),
      ),
    );
  }}