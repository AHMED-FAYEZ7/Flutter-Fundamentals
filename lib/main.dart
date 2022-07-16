import 'package:flutter/material.dart';
import 'package:flutter_fundamentals/counter_screen.dart';
import 'package:flutter_fundamentals/home_screen.dart';
import 'package:flutter_fundamentals/login_screen.dart';
import 'package:flutter_fundamentals/messnger_screen.dart';
import 'package:flutter_fundamentals/users_screen.dart';

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
      home: CounterScreen(),
    );
  }

}
