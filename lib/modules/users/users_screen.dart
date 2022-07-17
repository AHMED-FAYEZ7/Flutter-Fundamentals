import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_fundamentals/models/user/user_model.dart';



class UsersScreen extends StatelessWidget {
  UsersScreen({Key? key}) : super(key: key);

  List<UserModel> users =[
    UserModel(
        id: 1,
        name: 'ahmed fayez',
        phone: '+01026142957',
    ),
    UserModel(
        id: 2,
        name: 'omar fayez',
        phone: '+01026142957',
    ),
    UserModel(
      id: 1,
      name: 'mo7amed fayez',
      phone: '+01026142957',
    ),
    UserModel(
      id: 4,
      name: 'ahmed fayez',
      phone: '+010261yj42957',
    ),
    UserModel(
      id: 1,
      name: 'omar fayez',
      phone: '+01026142957',
    ),
    UserModel(
      id: 1,
      name: 'mo7amed fayez',
      phone: '+01026142957',
    ),
    UserModel(
      id: 1,
      name: 'ahmed fayez',
      phone: '+01026142957',
    ),
    UserModel(
      id: 1,
      name: 'omar fayez',
      phone: '+01026jy142957',
    ),
    UserModel(
      id: 1,
      name: 'mo7amed fayez',
      phone: '+01026142957',
    ),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Users'
        ),
      ),
      body: ListView.separated(
          itemBuilder: (context,index) => buildUserItem(users[index]),
          separatorBuilder: (context,index) => Padding(
            padding: const EdgeInsetsDirectional.only(
              start: 20,
            ),
            child: Container(
              width: double.infinity,
              height: 1,
              color: Colors.grey[300],
            ),
          ),
          itemCount: users.length,
      ),
    );
  }

  Widget buildUserItem(UserModel user) => Padding(
    padding: const EdgeInsets.all(20.0),
    child: Row(
      children: [
        CircleAvatar(
          radius: 25,
          child: Text(
            '${user.id}',
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        SizedBox(width: 20,),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              '${user.name}',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              '${user.phone}',
              style: TextStyle(
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ],
    ),
  );
}
