import 'package:flutter/cupertino.dart';
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
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadiusDirectional.only(
                  topStart: Radius.circular(20),
                ),
              ),
              clipBehavior: Clip.antiAliasWithSaveLayer,
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  const Image(
                    height: 200,
                    width: 200,
                    fit: BoxFit.cover,
                    image:NetworkImage('https://i.ytimg.com/vi/ekgUjyWe1Yc/maxresdefault.jpg'),
                  ),
                  Container(
                    width: 200,
                    color: Colors.black.withOpacity(.5),
                    padding: const EdgeInsets.symmetric(
                      vertical: 10,
                    ),
                    child: const Text(
                      'car11',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.deepOrange,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      // body: Container(
      //   color: Colors.amberAccent,
      //   width: double.infinity,
      //   child: SingleChildScrollView(
      //     child: Column(
      //       mainAxisSize: MainAxisSize.max,
      //       // mainAxisAlignment: MainAxisAlignment.center,
      //       // crossAxisAlignment: CrossAxisAlignment.end,
      //       children: [
      //         Container(
      //           height: 100,
      //           child: Text(
      //             'new_11',
      //             style: TextStyle(
      //               // color: Colors.red,
      //             ),
      //           ),
      //         ),
      //         Container(
      //           height: 100,
      //           child: Text(
      //             'new_11',
      //             style: TextStyle(
      //               // color: Colors.red,
      //             ),
      //           ),
      //         ),
      //         Container(
      //           height: 100,
      //           child: Text(
      //             'new_11',
      //             style: TextStyle(
      //               // color: Colors.red,
      //             ),
      //           ),
      //         ),
      //         Container(
      //           height: 100,
      //           child: Text(
      //             'new_11',
      //             style: TextStyle(
      //               // color: Colors.red,
      //             ),
      //           ),
      //         ),
      //         Container(
      //           height: 100,
      //           child: Text(
      //             'new_11',
      //             style: TextStyle(
      //               // color: Colors.red,
      //             ),
      //           ),
      //         ),
      //         Container(
      //           height: 100,
      //           child: Text(
      //             'new_11',
      //             style: TextStyle(
      //               // color: Colors.red,
      //             ),
      //           ),
      //         ),
      //         Container(
      //           height: 100,
      //           child: Text(
      //             'new_11',
      //             style: TextStyle(
      //               // color: Colors.red,
      //             ),
      //           ),
      //         ),
      //         Container(
      //           height: 100,
      //           child: Text(
      //             'new_11',
      //             style: TextStyle(
      //               // color: Colors.red,
      //             ),
      //           ),
      //         ),
      //       ],
      //     ),
      //   ),
      // ),
    );
  }
}
