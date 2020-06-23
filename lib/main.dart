import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/ui/QuizContainer.dart';

void main() {
  runApp(QuizApp());
}

final ThemeData _appTheme = _buildAppTheme();

ThemeData _buildAppTheme() {
  final ThemeData base = ThemeData.dark();

  return base.copyWith(
    brightness: Brightness.dark,
    accentColor: Colors.amber,
    primaryColor: Colors.blueGrey[800],
    scaffoldBackgroundColor: Colors.blueGrey,
    backgroundColor: Colors.amber,
    textTheme: TextTheme(
      bodyText2: TextStyle(
        fontSize: 16.9,
        color: Colors.white,
      ),
    ),
  );
}

class QuizApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: _appTheme,
      home: QuizContainer(),
      debugShowCheckedModeBanner: false,
    );
  }
}
