import 'package:flutter/material.dart';

class QuizContainer extends StatefulWidget {
  @override
  _QuizContainerState createState() => _QuizContainerState();
}

class _QuizContainerState extends State<QuizContainer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('True Citizen Quiz'),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
      ),
      backgroundColor: Colors.blueGrey,
      body: Container(
        child: Column(
          children: <Widget>[
            Image.asset(
              "images/flag.png",
              width: 250,
              height: 180,
            ),
          ],
        ),
      ),
    );
  }
}
