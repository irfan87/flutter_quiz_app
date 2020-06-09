import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/ui/QuizContainer.dart';

void main() {
  runApp(QuizApp());
}

class QuizApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: QuizContainer(),
      debugShowCheckedModeBanner: false,
    );
  }
}
