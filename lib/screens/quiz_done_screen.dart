import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class QuizDoneScreen extends StatelessWidget {
  static const route = '';
  const QuizDoneScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.45,
            decoration: BoxDecoration(color: Colors.amber),
            child: Text('blabla'),
          )
        ],
      ),
    );
  }
}
