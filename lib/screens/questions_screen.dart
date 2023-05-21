import 'dart:async';

import 'package:flutter/material.dart';
import 'package:quiz/constants/data.dart';
import 'package:quiz/controllers/question_controller.dart';
import 'package:quiz/models/questions.dart';
import 'package:quiz/screens/quiz_done_screen.dart';
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
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
            builder: (context) => QuizDoneScreen(),
            settings: RouteSettings(arguments: {
              "correctAnswer": correctAnswer,
              "falseAnswer": falseAnswer,
              "score": score
            })),
      );
    }
  }

  int? selectedOptionIndex;
  bool showAnswer = false;
  int correctAnswer = 0;
  int falseAnswer = 0;
  int score = 0;
  int time = 15;

  int _start = 15;
  int _current = 15;
  Timer? _timer;

  // @override
  // void initState() {
  //   super.initState();
  //   startTimer();
  // }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  void startTimer() {
    if (_timer != null) {
      _timer!.cancel();
    }
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        if (_current > 0) {
          _current--;
        } else {
          falseAnswer++;
          nextQustion();
          _current = _start;
        }
      });
    });
  }

  void checkAnswer({int? index, Question? question}) {
    if (!showAnswer) {
      setState(() {
        selectedOptionIndex = index;
        showAnswer = true;
        if (index == question!.answer) {
          correctAnswer++;
          score += 10;
        } else {
          falseAnswer++;
        }
      });
    }
    Timer(const Duration(seconds: 1), () {
      nextQustion();
      setState(() {
        _timer!.cancel();
        _current = _start;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    final questionsMap = ModalRoute.of(context)!.settings.arguments
        as Map<String, List<Question>>;
    final questions = questionsMap.values.first;

    return Scaffold(
      appBar: AppBar(title: const Text('question')),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 30),
            Stack(
              alignment: Alignment.topCenter,
              // fit: StackFit.loose,
              children: [
                const SizedBox(height: 20),
                Container(
                  padding: const EdgeInsets.all(15),
                  margin:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 30),
                  height: 200,
                  decoration: BoxDecoration(
                    color: main_color,
                    borderRadius: const BorderRadius.all(Radius.circular(20)
                        // bottomLeft: Radius.elliptical(120, 30),
                        // bottomRight: Radius.elliptical(120, 30),
                        ),
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Text(
                                '$correctAnswer',
                                style: const TextStyle(
                                  color: Colors.green,
                                ),
                              ),
                              Container(
                                width: correctAnswer * 10, //100,
                                height: 10,
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                child: const ClipRRect(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20)),
                                  child: LinearProgressIndicator(
                                    color: Colors.green,
                                    value: 3,
                                    minHeight: 7,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Container(
                                width: falseAnswer * 10,
                                height: 10,
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                child: const ClipRRect(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20)),
                                  child: LinearProgressIndicator(
                                    color: Colors.redAccent,
                                    value: 3,
                                    minHeight: 7,
                                  ),
                                ),
                              ),
                              Text(
                                '$falseAnswer',
                                style: const TextStyle(
                                  color: Colors.redAccent,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8, vertical: 20),
                        child: Text(
                          "Question ${question_index + 1} / ${questions.length}",
                          style: const TextStyle(
                              color: Colors.purple,
                              fontSize: 20,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Text(
                          questionsMap.values.first[question_index].question,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              color: Colors.black54),
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  top: 0,
                  child: MyTimer(
                    time: _current,
                    countingTime: () {
                      startTimer();
                    },
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
                  onTap: () => checkAnswer(
                      index: e.key + 1, question: questions[question_index]),
                  child: Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
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
                        width: 40,
                        height: 40,
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
            // Text(
            //   questionsMap.values.first[question_index].score.toString(),
            // ),
          ],
        ),
      ),
    );
  }
}
