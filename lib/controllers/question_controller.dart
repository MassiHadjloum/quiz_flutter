import 'dart:async';

import 'package:flutter/material.dart';
import 'package:quiz/models/questions.dart';

class Questincontroller {
  bool _isPressed = false;
  double _nbrQuestions = 1;
  int? _selectedAnswer;
  int _countCorrectAnswer = 0;
  final _sec = 15;

  bool get isPressed => _isPressed;
  double get nbrQuestions => _nbrQuestions;
  int? get selectedAnswer => _selectedAnswer;
  int get countCorrectAnswers => _countCorrectAnswer;
  int get sec => _sec;

  int _correctAnswer = 0;
  final Map<int, bool> answerdQuestions = {};
  Timer? timer;

  double get scoreResult {
    return countCorrectAnswers * 100 / 10;
  }

  void checkAnswer(Question question, int selectAnswer) {
    _isPressed = true;
    _selectedAnswer = selectedAnswer;
    _correctAnswer = question.answer;
    if (_correctAnswer == _selectedAnswer) {
      _countCorrectAnswer++;
    }
    answerdQuestions.update(question.id, (value) => true);
    Future.delayed(const Duration(seconds: 1)).then((value) => nextQuestion());
  }

  void nextQuestion() {}

  static Map<String, dynamic> getOptionColor(
    int index,
    correctAnswerIndex,
    selectedOptionIndex,
    showAnswer,
  ) {
    if (showAnswer) {
      if (index == selectedOptionIndex) {
        if (index == correctAnswerIndex) {
          return {
            "color": Colors.green,
            "icon": Icons.check_circle_outline_rounded
          };
        } else {
          return {"color": Colors.red, "icon": Icons.cancel_outlined};
        }
      } else if (index == correctAnswerIndex) {
        return {
          "color": Colors.green,
          "icon": Icons.check_circle_outline_rounded
        };
      }
    }
    return {"color": Colors.grey, "icon": null};
  }
}
