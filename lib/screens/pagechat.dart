import 'package:flutter/material.dart';
import 'package:graduationproject/shared/colors.dart';

class Pagechat extends StatefulWidget {
  const Pagechat({Key? key}) : super(key: key);

  @override
  State<Pagechat> createState() => _PagechatState();
}

class _PagechatState extends State<Pagechat> {
  @override
  Widget build(BuildContext context) {

      return Scaffold(
    appBar: AppBar(
    actions: [
    IconButton(
    icon: CircleAvatar(
    radius: 30.0,
    backgroundColor: Colors.white,
    // ignore: prefer_const_constructors
    child: Icon(
    Icons.phone,
    size: 20.0,
    color: Colors.black,
    ),
    ),
    onPressed: () {},
    ),
    IconButton(
    icon: CircleAvatar(
    radius: 30.0,
    backgroundColor: Colors.white,
    // ignore: prefer_const_constructors
    child: Icon(
    Icons.video_call,
    size: 20.0,
    color: Colors.black,
    ),
    ),
    onPressed: () {},
    ),
    ],
    backgroundColor:appbarGreen,
    title: Text(
    'Ahmed Mohamed',
    style: TextStyle(color: Colors.white),
    ),
    ),
    body: Padding(
    padding: const EdgeInsets.all(20.0),
    child: Column(
    children: [
    Align(
    alignment: AlignmentDirectional.centerStart,
    child: Container(
    decoration: BoxDecoration(
    color: Colors.grey[300],
    borderRadius: BorderRadiusDirectional.only(
    bottomEnd: Radius.circular(10.0),
    topEnd: Radius.circular(10.0),
    topStart: Radius.circular(10.0),
    )),
    padding: EdgeInsets.symmetric(
    vertical: 5.0,
    horizontal: 10.0,
    ),
    child: Text(
    'Hi how are you',style: TextStyle(fontSize: 20),
    ),
    ),
    ),
    Align(
    alignment: AlignmentDirectional.centerEnd,
    child: Container(
    decoration: BoxDecoration(
    color: Colors.blue[200],
    borderRadius: BorderRadiusDirectional.only(
    bottomStart: Radius.circular(10.0),
    topEnd: Radius.circular(10.0),
    topStart: Radius.circular(10.0),
    )),
    padding: EdgeInsets.symmetric(
    vertical: 5.0,
    horizontal: 10.0,
    ),
    child: Text(
    'Fine',
    style: TextStyle(fontSize: 20),
    ),
    ),
    ),
    Spacer(),
    Container(
    decoration: BoxDecoration(
    border: Border.all(
    color: Colors.grey,
    width: 2.0

    ),
    borderRadius: BorderRadius.circular(15.0),
    ) ,
    child: Row(
    children: [
    Expanded(
    child: TextFormField(
    decoration: InputDecoration(
    border: InputBorder.none,
    hintText: 'Type your message here...'
    ,
    ),
    ),
    )
    , Container(
    child: MaterialButton(
    onPressed:() {},
    minWidth: 1.0,
    child: Icon(
    Icons.send,
    color: Colors.black,
    ),

    ),
    )

    ],
    ),
    )
    ],
    ),
    ),
    );
  }
}

