import 'package:flutter/material.dart';
import 'package:graduationproject/screens/search.dart';

import 'package:provider/provider.dart';
class Notifications extends StatelessWidget {
  const Notifications({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: MediaQuery.of(context).size.width >600 ?null : AppBar(
        backgroundColor: const Color.fromARGB(255, 76, 141, 95),
        title: const Text("Notifications"),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Search(),
                ),
              );
            },
            icon: Icon(Icons.search),
          ),
       ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              ListView.separated(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (context, index) => notificationItem(),
                separatorBuilder: (context, index) => SizedBox(
                  height: 10,
                ),
                itemCount: 5,
              ),
            ],
          ),
        ),
      ),



    );
  }

  Widget notificationItem() =>
      Row(
        children: [
          CircleAvatar(
            radius: 30.0,
            backgroundImage: NetworkImage(
                'https://avatars.githubusercontent.com/u/106709207?v=4'),
          ),

          SizedBox(
            width: 20,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Ahmed Fawzi and 2 others',
                  style: TextStyle(
                    fontSize: 16.0,
                 //   fontWeight: FontWeight.bold,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(
                  height: 5.0,
                ),
                Row(
                  children:
                  [
                    Expanded(
                      child: Text(
                        'posted in Algorithms group',
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10.0,
                      ),
                      child: Container(
                        width: 7.0,
                        height: 7.0,
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),

                  ],
                ),
                Text(
                  '2 hours ago',
                  style: TextStyle(
                   // fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          IconButton(onPressed: (){},
              icon: Icon(Icons.more_vert) ),
        ],
      );

}