import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:graduationproject/models/item.dart';
import 'package:graduationproject/provider/cart.dart';
import 'package:graduationproject/screens/add_post.dart';
import 'package:provider/provider.dart';

class Group_page extends StatefulWidget {
   Item product;
   Group_page({required this.product});
  @override
  State<Group_page> createState() => _Group_pageState();
}

class _Group_pageState extends State<Group_page> {

  @override
  Widget build(BuildContext context) {
    final Carttt = Provider.of<Cart>(context);
    return Scaffold(

      floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.green,
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
        title: Text(widget.product.SubjectName,),
        backgroundColor: Colors.green,

      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
    Padding(
    padding: const EdgeInsets.all(8.0),
    child: Column(
    children: [
        Image.asset(widget.product.imgPath),
    const SizedBox(
    height: 22,
    ),
    SizedBox(
        child: Text(
        widget.product.SubjectName,
        style: TextStyle(fontSize: 30),
        ),
    ),
    const SizedBox(
    height: 22,),
    ],),
    ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton.icon(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.person_add,
                    color: Colors.grey,
                    size: 24.0,
                  ),
                  label: const Text(
                    "دعوة",
                    style: TextStyle(fontSize: 17),
                  ),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                        const Color.fromARGB(0, 90, 103, 223)),
                    padding: MaterialStateProperty.all(
                        const EdgeInsets.symmetric(vertical: 10, horizontal: 33)),
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(7),
                        side: const BorderSide(
                            color: Color.fromARGB(109, 255, 255, 255),
                            // width: 1,
                            style: BorderStyle.solid),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),
                ElevatedButton.icon(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.groups_rounded,
                    size: 24.0,
                  ),
                  label: const Text(
                    "تم الانضمام",
                    style: TextStyle(fontSize: 17),
                  ),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                        const Color.fromARGB(121, 76, 141, 95)),
                    padding: MaterialStateProperty.all(
                        const EdgeInsets.symmetric(vertical: 10, horizontal: 33)),
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(7),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 9,
            ),
            const Divider(
              color: Colors.white,
              thickness: 0.44,
            ),
            
            Container(
              decoration: BoxDecoration(
                  color: Colors.white,
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
                                    "https://cdn.pixabay.com/photo/2015/01/08/18/29/entrepreneur-593358__340.jpg"),
                              ),
                              SizedBox(
                                width: 16,
                              ),
                              Text(
                                "Dr/ Mohmed ",
                                style: TextStyle(fontSize: 15),
                              ),
                            ],
                          ),
                          IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert)),
                        ],
                      ),
                    ),
                    Container(padding: EdgeInsets.fromLTRB(10, 5, 5, 10),
                        child: Text("لو حد لسه عنده مشكله في المنصه فهيبقى يوم الثلاثاء من الساعه ١١ ل ٢ ",style:TextStyle(fontSize: 20),)),
                    SizedBox(height: 10,),

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
          ],
        ),
      ),

      // backgroundColor:
      // MediaQuery.of(context).size.width > 600 ? secondaryColor2 : Colors.white,

    );
  }
}
