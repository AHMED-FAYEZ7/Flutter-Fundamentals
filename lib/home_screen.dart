import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(
          Icons.menu,
        ),
        title: const Text('Update'),
        actions: [
          IconButton(
              onPressed: (){},
              icon: const Icon(
                Icons.notification_important,
              ),
          ),
          IconButton(
              onPressed: (){},
              icon: const Icon(
                Icons.search,
              ),
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
            height: 100,
            child: Text(
              'new_11',
              style: TextStyle(
                // color: Colors.red,
              ),
            ),
          ),
          Text(
            'new_11',
            style: TextStyle(
              // color: Colors.red,
            ),
          ),
          Text(
            'new_1122',
            style: TextStyle(
              color: Colors.red,
            ),
          ),
        ],
      ),
    );
  }
}
