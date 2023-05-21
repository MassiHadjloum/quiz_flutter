import 'package:flutter/material.dart';
import 'package:quiz/screens/home_screens.dart';
import 'package:quiz/screens/questions_screen.dart';
import 'package:quiz/screens/quiz_done_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        QuestionScreen.route: (ctx) => const QuestionScreen(),
        QuizDoneScreen.route: (ctx) => QuizDoneScreen(),
        HomePage.route: (ctx) => HomePage(
              title: 'HOME PAGE',
            ),
      },
      home: HomePage(title: 'Flutter Demo Home Page'),
    );
  }
}
