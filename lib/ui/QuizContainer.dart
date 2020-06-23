import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/model/question.dart';

class QuizContainer extends StatefulWidget {
  @override
  _QuizContainerState createState() => _QuizContainerState();
}

class _QuizContainerState extends State<QuizContainer> {
  int _currentQuestionIndex = 0;

  List questionBank = [
    Question.name(
        "The U.S. Declarataion of Independence was adopted in 1776", true),
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
        // backgroundColor: Colors.blueGrey,
      ),
      // backgroundColor: Colors.blueGrey,
      body: Builder(
        builder: (BuildContext context) {
          return Container(
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
                Padding(
                  padding: EdgeInsets.all(12.0),
                  child: Container(
                    height: 120.0,
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(14.0),
                      border: Border.all(
                        color: Colors.blueGrey.shade400,
                        style: BorderStyle.solid,
                      ),
                    ),
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          questionBank[_currentQuestionIndex].questionText,
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  child: Column(
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          RaisedButton(
                            onPressed: () => _checkAnswer(true, context),
                            color: Colors.blueGrey.shade600,
                            child: Icon(
                              Icons.done,
                              color: Colors.white,
                            ),
                          ),
                          RaisedButton(
                            onPressed: () => _checkAnswer(false, context),
                            color: Colors.blueGrey.shade600,
                            child: Icon(
                              Icons.clear,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          RaisedButton(
                            onPressed: () => _previousQuestion(),
                            color: Colors.blueGrey.shade700,
                            child: Icon(
                              Icons.arrow_back,
                              color: Colors.white,
                            ),
                          ),
                          RaisedButton(
                            onPressed: () => _nextQuestion(),
                            color: Colors.blueGrey.shade700,
                            child: Icon(
                              Icons.arrow_forward,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Spacer(),
              ],
            ),
          );
        },
      ),
    );
  }

  _checkAnswer(bool choice, BuildContext context) {
    final snackBar = SnackBar(
      duration: Duration(milliseconds: 2000),
      backgroundColor: choice == questionBank[_currentQuestionIndex].isCorrect
          ? Colors.green.shade600
          : Colors.red.shade600,
      content: choice == questionBank[_currentQuestionIndex].isCorrect
          ? Text(
              "Correct Answer",
              textAlign: TextAlign.center,
            )
          : Text(
              "Wrong Answer",
              textAlign: TextAlign.center,
            ),
    );

    Scaffold.of(context).showSnackBar(snackBar);

    _updateQuestion();
  }

  _updateQuestion() {
    setState(() {
      _currentQuestionIndex = (_currentQuestionIndex + 1) % questionBank.length;
    });
  }

  _previousQuestion() {
    setState(() {
      _currentQuestionIndex = (_currentQuestionIndex - 1) % questionBank.length;
    });
  }

  _nextQuestion() {
    _updateQuestion();
  }
}
