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
    textTheme: _appTextTheme(base.textTheme),
  );
}

TextTheme _appTextTheme(TextTheme textBase) {
  return textBase.copyWith(
    headline2: textBase.headline2.copyWith(
      fontWeight: FontWeight.w500,
      fontFamily: 'FreckleFace',
    ),
    headline6: textBase.headline6.copyWith(
      fontSize: 18.0,
    ),
    caption: textBase.caption.copyWith(
      wordSpacing: 2.0,
    ),
    bodyText2: textBase.bodyText2
        .copyWith(
          fontSize: 16.0,
          color: Colors.white,
          fontFamily: 'FreckleFace',
        )
        .apply(
          fontFamily: 'FreckleFace',
        ),
    button: textBase.button.copyWith(
      letterSpacing: 3.0,
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
