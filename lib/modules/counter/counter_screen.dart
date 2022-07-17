import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  CounterScreen({Key? key}) : super(key: key);

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int counter = 1;

  @override
  Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: Text(
            'Counter',
          ),
        ),
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                onPressed: ()
                {
                  setState(() {
                    counter--;
                    print(counter);
                  });
                },
                child: Text(
                  'MINUS',
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                child: Text(
                  '$counter',
                  style: TextStyle(
                    fontSize: 70,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ),
              TextButton(
                onPressed: ()
                {
                  setState(() {
                    counter++;
                    print(counter);
                  });
                },
                child: Text(
                  'PLUS',
                ),
              ),
            ],
          ),
        ),
      );
  }
}
