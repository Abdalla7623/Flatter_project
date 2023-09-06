import 'package:flutter/material.dart';
import 'package:test1/Login.dart';
import 'package:test1/counter_screen.dart';
import 'package:test1/messenger_screen.dart';
import 'package:test1/users_screen.dart';
void main()
{
  runApp(MyApp());
}

class MyApp extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: counter_screen(),
      );
  }
}
