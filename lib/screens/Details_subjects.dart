import 'package:flutter/material.dart';
import 'package:graduationproject/models/item.dart';
import 'package:graduationproject/provider/cart.dart';
import 'package:graduationproject/screens/allgoups.dart';
import 'package:graduationproject/shared/colors.dart';
import 'package:provider/provider.dart';

class Details_subjects extends StatefulWidget {
  Item product;

  Details_subjects({super.key, required this.product});
  // const Details_subjects({Key? key}) : super(key: key);

  @override
  State<Details_subjects> createState() => _Details_subjectsState();
}

class _Details_subjectsState extends State<Details_subjects> {
  bool isShowMore = true;
  bool isGoin = true;


  @override
  Widget build(BuildContext context) {
    final Carttt = Provider.of<Cart>(context);
    return Scaffold(
      // backgroundColor:
      // MediaQuery.of(context).size.width > 600 ? secondaryColor2 : Colors.white,
      appBar:
          //MediaQuery.of(context).size.width >600 ?null :
          AppBar(
        backgroundColor: const Color.fromARGB(255, 76, 141, 95),
        title: const Text("Details Subjects"),
        actions: [
          Stack(
            children: [
              Positioned(
                bottom: 19,
                child: Container(
                    child: Text(
                      "${Carttt.selectedSubject.length}",
                      style: TextStyle(
                          fontSize: 16, color: Color.fromARGB(255, 0, 0, 0)),
                    ),
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        color: Color.fromARGB(211, 164, 255, 193),
                        shape: BoxShape.circle)),
              ),
              IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => AllGroups(),
                    ),
                  );
                },
                icon: Icon(Icons.groups),
              ),
            ],
          ),
          IconButton(onPressed: () {}, icon: const Icon(Icons.search))
        ],
      ),
      body: Container(
        decoration: BoxDecoration(
            color: primaryColor, borderRadius: BorderRadius.circular(12)),
        margin: EdgeInsets.symmetric(
            vertical: 11,
            horizontal: MediaQuery.of(context).size.width > 600
                ? MediaQuery.of(context).size.width / 6
                : 0),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Image.asset(widget.product.imgPath),
                //      CircleAvatar(
                //     radius: 150,
                //     backgroundImage: AssetImage(widget.product.imgPath),
                // ),
                const SizedBox(
                  height: 22,
                ),
                Text(
                  widget.product.SubjectName,
                  style: TextStyle(fontSize: 22),
                ),
                const SizedBox(
                  height: 22,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(4),
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 255, 129, 129),
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: const Text(
                        "Rate",
                        style: TextStyle(fontSize: 15),
                      ),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Row(
                      children: const [
                        Icon(
                          Icons.star,
                          size: 20,
                          color: Color.fromARGB(255, 255, 191, 0),
                        ),
                        Icon(
                          Icons.star,
                          size: 20,
                          color: Color.fromARGB(255, 255, 191, 0),
                        ),
                        Icon(
                          Icons.star,
                          size: 20,
                          color: Color.fromARGB(255, 255, 191, 0),
                        ),
                        Icon(
                          Icons.star,
                          size: 20,
                          color: Color.fromARGB(255, 255, 191, 0),
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 66,
                    ),
                    TextButton(
                        onPressed: () {
                          setState(() {
                            isGoin = !isGoin;
                            if (isGoin == false) {
                              Carttt.add(Item(
                                  SubjectName: widget.product.SubjectName,
                                  imgPath: widget.product.imgPath,
                                  NameDoctor: widget.product.NameDoctor));
                            }
                            else if(isGoin == true){
                            Carttt.delete(Item(
                                  SubjectName: widget.product.SubjectName,
                                  imgPath: widget.product.imgPath,
                                  NameDoctor: widget.product.NameDoctor));
                            }

                          });
                        },
                        child: Text(
                          isGoin ? "Goin" : "Goined",
                          style: TextStyle(fontSize: 20),
                        ))
                  ],
                ),
                const SizedBox(
                  height: 16,
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: SizedBox(
                    width: double.infinity,
                    child: Text(
                      "Definition of ٍSubjects :",
                      style: TextStyle(fontSize: 22),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "A flower, sometimes known as a bloom or blossom, is the reproductive structure found in flowering plants (plants of the division Angiospermae). The biological function of a flower is to facilitate reproduction, usually by providing a mechanism for the union of sperm with eggs. Flowers may facilitate outcrossing (fusion of sperm and eggs from different individuals in a population) resulting from cross-pollination or allow selfing (fusion of sperm and egg from the same flower) when self-pollination occurs.",
                    style: const TextStyle(
                      fontSize: 18,
                    ),
                    maxLines: isShowMore ? 3 : null,
                    overflow: TextOverflow.fade,
                  ),
                ),
                TextButton(
                    onPressed: () {
                      setState(() {
                        isShowMore = !isShowMore;
                      });
                    },
                    child: Text(
                      isShowMore ? "Show more" : "Show less",
                      style: const TextStyle(
                        fontSize: 18,
                      ),
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
