import 'package:flutter/material.dart';

class Question {
  final String question;
  final List<String> options;
  final int id, answer;
  final int score;
  Color? color;

  Question({
    required this.id,
    required this.question,
    required this.options,
    required this.answer,
    required this.score,
    this.color,
  });
}
