
import 'package:flutter/material.dart';

class QuestionAnswer extends StatefulWidget {
  const QuestionAnswer({Key? key}) : super(key: key);

  @override
  State<QuestionAnswer> createState() => _QuestionAnswerState();
}

class _QuestionAnswerState extends State<QuestionAnswer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MediaQuery.of(context).size.width >600 ?null : AppBar(

        title: Center(
          child: Text("Q&N",
            style: TextStyle(fontStyle: FontStyle.italic,fontSize: 20,
                color:  const Color.fromARGB(255, 17, 114, 67)
            ),
          ),
        ),
      ),
    );
  }
}