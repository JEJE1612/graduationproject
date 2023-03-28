import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:graduationproject/screens/add_post.dart';
import 'package:graduationproject/shared/colors.dart';



class Events extends StatefulWidget {
  @override
  State<Events> createState() => _EventsState();
}

class _EventsState extends State<Events> {





  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 218, 216, 216),
      floatingActionButton: FloatingActionButton(
          backgroundColor: appbarGreen,
          onPressed: (){
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) =>
                    AddPost(),
              ),
            );
          },
          child: Icon(Icons.add,
            color: Colors.white,
          )),
      appBar: MediaQuery.of(context).size.width >600 ?null : AppBar(
        title: Center(
          child: Text("Event screen",
            style: TextStyle(color:  const Color.fromARGB(255, 17, 114, 67),
                fontStyle: FontStyle.italic
            ),
          ),
        ),
        backgroundColor: Colors.white,

      ),
      body: Container(
        decoration: BoxDecoration(
            color: primaryColor,
            borderRadius: BorderRadius.circular(12)),
        margin: EdgeInsets.symmetric(
            vertical: 11, horizontal: MediaQuery.of(context).size.width > 600 ? MediaQuery.of(context).size.width / 6 : 0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 13),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: const [
                        CircleAvatar(
                          radius: 26,
                          backgroundImage: NetworkImage(
                            // widget.snap["profileImg"],
                              "https://media.istockphoto.com/id/930487356/photo/word-code-is-composed-of-3d-letters-is-in-background-of-4-colors-blue-red-orange-and-green.jpg?b=1&s=170667a&w=0&k=20&c=mkkqBZrlyQlULicCX8zWpZUYwVkOQWW6ANk3k07CXLg="),
                        ),
                        SizedBox(
                          width: 16,
                        ),
                        Text(
                          "Theater College",
                          style: TextStyle(fontSize: 15),
                        ),
                      ],
                    ),
                    IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert)),
                  ],
                ),
              ),
              Text("يعلن فريق المسرح عن فتح باب التسجيل لمين يريد الدخول من يوم 1 يناير القادم"),
              SizedBox(height: 10,),
              Image.network(
                // widget.snap["postUrl"],
                "https://cdn.pixabay.com/photo/2014/08/31/10/03/theater-432045__340.jpg",
                fit: BoxFit.cover,
                height: MediaQuery.of(context).size.height * 0.35,
                width: double.infinity,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 11),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.favorite_border),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.comment_outlined,
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.send,
                          ),
                        ),
                      ],
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.bookmark_outline),
                    ),
                  ],
                ),
              ),
              Container(
                  margin: const EdgeInsets.fromLTRB(10, 0, 0, 10),
                  width: double.infinity,
                  child: const Text(
                    "10 Likes",
                    //textAlign: TextAlign.start,
                    style: TextStyle(
                        fontSize: 18, color: Color.fromARGB(214, 157, 157, 165)),
                  )),
              Row(
                children: const [
                  SizedBox(
                    width: 9,
                  ),
                  Text(
                    // "${widget.snap["username"]}",
                    "Sanaa Adel ",
                    //textAlign: TextAlign.start,
                    style: TextStyle(
                        fontSize: 20, color: Color.fromARGB(255, 189, 196, 199)),
                  ),
                  Text(
                    // " ${widget.snap["description"]}",
                    " Sidi Bou Said ♥",
                    //textAlign: TextAlign.start,
                    style: TextStyle(
                        fontSize: 18, color: Color.fromARGB(255, 189, 196, 199)),
                  ),
                ],
              ),
              GestureDetector(
                onTap: () {},
                child: Container(
                    margin: const EdgeInsets.fromLTRB(10, 13, 9, 10),
                    width: double.infinity,
                    child: const Text(
                      "view all 100 comments",
                      style: TextStyle(
                          fontSize: 18, color: Color.fromARGB(214, 157, 157, 165)),
                      //textAlign: TextAlign.start,
                    )),
              ),
              Container(
                  margin: const EdgeInsets.fromLTRB(10, 0, 9, 10),
                  width: double.infinity,
                  child: const Text(
                    "10June 2022",
                    style: TextStyle(
                        fontSize: 18, color: Color.fromARGB(214, 157, 157, 165)),
                    // textAlign: TextAlign.start,
                  )),
            ],
          ),
        ),
      ),

      // backgroundColor:
      // MediaQuery.of(context).size.width > 600 ? secondaryColor2 : Colors.white,

    );
  }
}
