import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/model/question.dart';

class QuizContainer extends StatefulWidget {
  @override
  _QuizContainerState createState() => _QuizContainerState();
}

class _QuizContainerState extends State<QuizContainer> {
  List questionBank = [
    Question.name(
        "The U.S. Declarataion of Independence was adopted in 1775", true),
    Question.name("The Supreme law of the land is Constitution", true),
    Question.name(
        "The two rights in the Declaration of Independence are Life and Pursuit of Happiness",
        true),
    Question.name("The U.S. has 26 Amendments", false),
    Question.name(
        "Freedom of religion means: \nYou can practice any religion, or not practice a religion.",
        true),
    Question.name("Journalist is one branch or part of the government", false),
    Question.name("The Congress does not make federal laws", false),
    Question.name("There are 100 U.S Senators", true),
    Question.name("We elect a U.S Senator for 4 years", false),
    Question.name("We elect a U.S Representative for 2 years", true),
    Question.name(
        "A U.S. Senator represents all people of the United States", false),
    Question.name("We vote for President in January", false),
    Question.name("Who vetoes bills is the President", true),
    Question.name("The Constitution was written in 1787", true),
    Question.name("George Bush is the \"Father of Our Country\"", false),
  ];

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
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Center(
              child: Image.asset(
                "images/flag.png",
                width: 250,
                height: 180,
              ),
            ),
            Center(
              child: Container(
                padding: EdgeInsets.only(left: 20.0, right: 20.0),
                height: 120.0,
                child: Text(
                  questionBank[14].questionText,
                  style: TextStyle(
                    fontSize: 16.0,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
