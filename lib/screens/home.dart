import 'dart:ui';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:graduationproject/screens/Chat.dart';
import 'package:graduationproject/screens/Groups.dart';
import 'package:graduationproject/screens/Notifications.dart';
import 'package:graduationproject/screens/add_post.dart';
import 'package:graduationproject/screens/search.dart';
import 'package:graduationproject/screens/sign_in.dart';
import 'package:graduationproject/shared/DisplayEmail.dart';
import 'package:graduationproject/shared/colors.dart';
import 'package:graduationproject/shared/displayname.dart';
import 'package:graduationproject/shared/postInfo.dart';

class Home extends StatefulWidget {
   final String uid;
   Home({Key? key, required this.uid}) : super(key: key);
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Map userDate = {};
  bool isLoading = true;
  int postCount = 0;
  bool isFollow = true;

  getData() async {
    // Get data from DB

    setState(() {
      isLoading = true;
    });
    try {
      DocumentSnapshot<Map<String, dynamic>> snapshot = await FirebaseFirestore
          .instance
          .collection('users')
          .doc(widget.uid,)
          .get();

      userDate = snapshot.data()!;


    } catch (e) {
      print(e.toString());
    }

    setState(() {
      isLoading = false;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getData();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
            backgroundColor: appbarGreen,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => AddPost(),
                ),
              );
            },
            child: Icon(
              Icons.add,
              color: Colors.white,
            )),
        backgroundColor: Color.fromARGB(255, 218, 216, 216),
        drawer: Drawer(
          child: Column(

            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  const UserAccountsDrawerHeader(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("images/background.jpg"),
                          fit: BoxFit.cover),
                    ),
                    accountName: DisplayName(),
                    accountEmail: DisplayEmail(),
                    currentAccountPictureSize: Size.square(99),
                    currentAccountPicture: CircleAvatar(
                        radius: 55,
                        backgroundImage: AssetImage("images/sanaa.jpg")),
                  ),
                  ListTile(
                      title: const Text("Home"),
                      leading: const Icon(Icons.home),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Home(uid: FirebaseAuth.instance.currentUser!.uid,),
                          ),
                        );
                      }),
                  ListTile(
                      title: const Text("My groups"),
                      leading: const Icon(Icons.group),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Groups(),
                          ),
                        );
                      }),
                  ListTile(
                      title: const Text("About"),
                      leading: const Icon(Icons.help_center),
                      onTap: () {}),
                  ListTile(
                      title: const Text("Logout"),
                      leading: const Icon(Icons.exit_to_app),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Login(),
                          ),
                        );
                      }),
                ],
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 12),
                child: const Text("Developed by sanaa adel © 2022",
                    style: TextStyle(fontSize: 16)),
              )
            ],
          ),
        ),
        // backgroundColor:
        // MediaQuery.of(context).size.width > 600 ? secondaryColor2 : Colors.white,
        appBar: MediaQuery.of(context).size.width > 600
            ? null
            : AppBar(
                backgroundColor: appbarGreen,
                actions: [
                  IconButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Notifications(),
                        ),
                      );
                    },
                    icon: Icon(Icons.notifications),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  IconButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Chat(),
                        ),
                      );
                    },
                    icon: Icon(Icons.message),
                  ),
                  SizedBox(
                    width: 5,
                  ),
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
                title: Text("FCI Community"),
              ),
        body: StreamBuilder<QuerySnapshot>(
          stream: FirebaseFirestore.instance
              .collection('posts')
              .orderBy("datePublished", descending: true)
              .snapshots(),
          builder:
              (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
            if (snapshot.hasError) {
              return const Text('Something went wrong');
            }

            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(child: CircularProgressIndicator());
            }

            return ListView(
              children: snapshot.data!.docs.map((DocumentSnapshot document) {
                Map<String, dynamic> data =
                    document.data()! as Map<String, dynamic>;
                return PostDesign(
                  dataFromDB: data,
                );
              }).toList(),
            );
          },
        ));
  }
}
