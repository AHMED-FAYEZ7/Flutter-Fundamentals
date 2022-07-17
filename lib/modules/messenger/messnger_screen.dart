import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MessengerScreen extends StatelessWidget {
  const MessengerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        titleSpacing: 20,
        backgroundColor: Colors.black,
        elevation: 0.0,
        title: Row(
          children: const [
            CircleAvatar(
              radius: 20.0,
              backgroundImage: NetworkImage('https://i.ytimg.com/vi/ekgUjyWe1Yc/maxresdefault.jpg'),
            ),
            SizedBox(
              width: 15,
            ),
            Text(
              'Chats',
              style: TextStyle(
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
              onPressed: (){},
              icon: CircleAvatar(
                backgroundColor: Colors.grey,
                radius: 17.0,
                child: Icon(
                  Icons.camera_alt,
                  size: 22.0,
                  color: Colors.white,
                ),
              ),
          ),
          IconButton(
              onPressed: (){},
              icon: CircleAvatar(
                backgroundColor: Colors.grey,
                radius: 17.0,
                child: Icon(
                  Icons.edit,
                  size: 22.0,
                  color: Colors.white,
                ),
              ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10,),
                  color: Colors.grey,
                ),
                padding: EdgeInsets.all(8,),
                child: Row(
                  children: const [
                    Icon(
                      Icons.search,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      'Search',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                height: 100,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context , index) => buildStoryItem(),
                  separatorBuilder: (context , index) => const SizedBox(
                    width: 15,
                  ),
                  itemCount: 10,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              ListView.separated(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                scrollDirection: Axis.vertical,
                  itemBuilder: (context,index) => buildChatItem(),
                  separatorBuilder: (context , index) => const SizedBox(height: 15,),
                  itemCount: 15,
              ),

            ],
          ),
        ),
      ),
    );
  }

  Widget buildChatItem() => Row(
    children: [
      Stack(
        alignment: AlignmentDirectional.bottomEnd,
        children: const [
          CircleAvatar(
            radius: 30,
            backgroundImage: NetworkImage('https://i.ytimg.com/vi/ekgUjyWe1Yc/maxresdefault.jpg'),
          ),
          Padding(
            padding: EdgeInsetsDirectional.only(
              bottom: 2,
              end: 2,
            ),
            child: CircleAvatar(
              radius: 8,
              backgroundColor: Colors.black,
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.only(
              bottom: 2,
              end: 2,
            ),
            child: CircleAvatar(
              radius: 7,
              backgroundColor: Colors.green,
            ),
          ),
        ],
      ),
      const SizedBox(width: 20),
      Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Ahmed Fayez gfZASEDFASFASEFeASFesAGFesAWFAFAEGratghrtahg',
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Row(
              children: [
                Expanded(
                  child: Text(
                    'hello my name ahmed fayez i hope ',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 5,
                  ),
                  child: Container(
                    height: 5,
                    width: 5,
                    decoration: BoxDecoration(
                      color: Colors.white60,
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
                Text(
                  '02:00AM',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    ],
  );
  Widget buildStoryItem() => Container(
    width: 60,
    child: Column(
      children: [
        Stack(
          alignment: AlignmentDirectional.bottomEnd,
          children: const [
            CircleAvatar(
              radius: 30,
              backgroundImage: NetworkImage('https://i.ytimg.com/vi/ekgUjyWe1Yc/maxresdefault.jpg'),
            ),
            Padding(
              padding: EdgeInsetsDirectional.only(
                bottom: 2,
                end: 2,
              ),
              child: CircleAvatar(
                radius: 8,
                backgroundColor: Colors.black,
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.only(
                bottom: 2,
                end: 2,
              ),
              child: CircleAvatar(
                radius: 7,
                backgroundColor: Colors.green,
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 7,
        ),
        const Text(
          'Ahmed Fayez Basioni Hussein',
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ],
    ),
  );
}
