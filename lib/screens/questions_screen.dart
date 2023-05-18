import 'dart:async';

import 'package:flutter/material.dart';
import 'package:quiz/constants/data.dart';
import 'package:quiz/controllers/question_controller.dart';
import 'package:quiz/models/questions.dart';
import 'package:quiz/widgets/question_options.dart';
import 'package:quiz/widgets/timer.dart';

class QuestionScreen extends StatefulWidget {
  static const route = '/questions';
  const QuestionScreen({super.key});

  @override
  State<QuestionScreen> createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  int question_index = 0;
  void nextQustion() {
    if (question_index < 9) {
      setState(
        () {
          question_index++;
          selectedOptionIndex = null;
          showAnswer = false;
        },
      );
    } else {
      question_index = 0;
    }
  }

  int? selectedOptionIndex;
  bool showAnswer = false;

  void checkAnswer(int index) {
    if (!showAnswer) {
      setState(() {
        selectedOptionIndex = index;
        showAnswer = true;
      });
    }
    Timer(const Duration(seconds: 1), () {
      // nextQustion();
    });
  }

  @override
  Widget build(BuildContext context) {
    final questionsMap = ModalRoute.of(context)!.settings.arguments
        as Map<String, List<Question>>;
    final questions = questionsMap.values.first;

    return Scaffold(
      appBar: AppBar(title: const Text('question')),
      body: Column(
        children: [
          const SizedBox(height: 30),
          Stack(
            alignment: Alignment.topCenter,
            fit: StackFit.loose,
            children: [
              // MyTimer(time: time, countingTime: () {}),
              const SizedBox(height: 20),
              Container(
                padding: const EdgeInsets.all(15),
                margin: const EdgeInsets.all(10),
                height: 150,
                decoration: BoxDecoration(
                  color: main_color,
                  borderRadius: const BorderRadius.all(Radius.circular(20)
                      // bottomLeft: Radius.elliptical(120, 30),
                      // bottomRight: Radius.elliptical(120, 30),
                      ),
                ),
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    questionsMap.values.first[question_index].question,
                    textAlign: TextAlign.left,
                    style: const TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
          ...questions[question_index].options.asMap().entries.map((e) {
            var optionColor = Questincontroller.getOptionColor(
                e.key + 1,
                questions[question_index].answer,
                selectedOptionIndex,
                showAnswer);
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                borderRadius: BorderRadius.circular(15),
                onTap: () => checkAnswer(e.key + 1),
                child: Container(
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(
                      color: optionColor['color'],
                      width: 2,
                    ),
                  ),
                  child: ListTile(
                    leading: Container(
                      width: 50,
                      height: 50,
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(200),
                          ),
                          color: Colors.amber),
                      child: Center(
                        child: Text(
                          '${e.key + 1}',
                          style: const TextStyle(
                            color: Colors.grey,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    title: Text(
                      e.value,
                      style: const TextStyle(
                        fontSize: 18,
                        color: Colors.grey,
                      ),
                    ),
                    trailing: Icon(
                      optionColor['icon'],
                      color: optionColor['color'],
                    ),
                  ),
                ),
              ),
            );
          }).toList(),
          Text(
            questionsMap.values.first[question_index].score.toString(),
          ),
        ],
      ),
    );
  }
}
