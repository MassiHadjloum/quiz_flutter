import 'package:flutter/material.dart';
import 'package:quiz/models/questions.dart';

class QuestionOptions extends StatelessWidget {
  final String option;
  final int index;
  final Function checkAnswer;
  final Question question;
  final Color color;
  final bool isPressed;
  const QuestionOptions({
    required this.index,
    required this.option,
    required this.checkAnswer,
    required this.color,
    required this.question,
    required this.isPressed,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        borderRadius: BorderRadius.circular(20),
        onTap: () {
          // checkAnswer(questions[index], )
          // !desabled
          //     ? nextQustion(questions, questions[index].options.indexOf(e))
          //     : null;
          checkAnswer(question, index);
        },
        child: Container(
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: !isPressed ? Colors.white : color, // Colors.white,
            borderRadius: BorderRadius.circular(30),
            border: Border.all(color: Colors.grey, width: 2),
          ),
          child: Row(
            children: [
              Container(
                // padding: const EdgeInsets.symmetric(vertical: 14),
                width: 50,
                height: 50,
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(200)),
                    color: Colors.amber),
                child: Center(
                  child: Text(
                    '$index',
                    style: const TextStyle(
                        color: Colors.grey,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              const SizedBox(width: 40),
              Flexible(
                child: Text(
                  option,
                  style: const TextStyle(fontSize: 18, color: Colors.grey),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
