import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_fundamentals/modules/counter/counter_screen.dart';
import 'package:flutter_fundamentals/modules/home/home_screen.dart';
import 'package:flutter_fundamentals/modules/login/login_screen.dart';
import 'package:flutter_fundamentals/modules/messenger/messnger_screen.dart';
import 'package:flutter_fundamentals/modules/users/users_screen.dart';
import 'package:flutter_fundamentals/shared/bloc_observer.dart';

void main() {
  BlocOverrides.runZoned(
        () {
          runApp(const MyApp());
    },
    blocObserver: MyBlocObserver(),
  );
}

class MyApp extends StatelessWidget
{
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context)
  {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CounterScreen(),
    );
  }

}
