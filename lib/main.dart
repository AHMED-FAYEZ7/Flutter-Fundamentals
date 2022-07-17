import 'package:flutter/material.dart';
import 'package:flutter_fundamentals/modules/counter/counter_screen.dart';
import 'package:flutter_fundamentals/modules/home/home_screen.dart';
import 'package:flutter_fundamentals/modules/login/login_screen.dart';
import 'package:flutter_fundamentals/modules/messenger/messnger_screen.dart';
import 'package:flutter_fundamentals/modules/users/users_screen.dart';

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
      home: HomeScreen(),
    );
  }

}
