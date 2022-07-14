import 'package:flutter/material.dart';
import 'package:flutter_fundamentals/home_screen.dart';
import 'package:flutter_fundamentals/login_screen.dart';

void main() {
  runApp(MyApp());

}

class MyApp extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    );
  }

}
