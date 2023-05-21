import 'dart:math';

import 'package:flutter/material.dart';

class QuizDoneScreen extends StatefulWidget {
  static const route = '/results';
  QuizDoneScreen({super.key});

  @override
  State<QuizDoneScreen> createState() => _QuizDoneScreenState();
}

class _QuizDoneScreenState extends State<QuizDoneScreen>
    with SingleTickerProviderStateMixin {
  AnimationController? _animationController;
  Animation<double>? _animation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 1),
    );

    _animation = Tween<double>(begin: 0, end: 1).animate(_animationController!)
      ..addListener(() {
        setState(() {});
      })
      ..addStatusListener((status) {
        if (status == AnimationStatus.dismissed) {
          _animationController!.forward();
        } else if (status == AnimationStatus.completed) {
          _animationController!.repeat();
        }
      });

    _animationController!.forward();
  }

  @override
  void dispose() {
    _animationController!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final settings =
        ModalRoute.of(context)!.settings.arguments as Map<String, int>;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Results'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          CustomPaint(
            painter: MyCustomPainter(_animation!.value),
            child: Container(
              width: 300,
              height: 300,
              child: Center(
                  child: Text(
                'Your score \n ${settings['score']}pt',
                style: const TextStyle(color: Colors.purple, fontSize: 20),
              )),
            ),
          ),
          Container(
            height: 100,
            margin: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 242, 242, 241),
              borderRadius: BorderRadius.circular(15),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  'Correct ${settings['correctAnswer']}',
                  style: const TextStyle(
                    color: Color(0xff19DC7C),
                  ),
                ),
                Text(
                  'False ${settings['falseAnswer']}',
                  style: const TextStyle(
                    color: Color.fromARGB(255, 220, 25, 25),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class MyCustomPainter extends CustomPainter {
  final double animationValue;

  MyCustomPainter(this.animationValue);

  @override
  void paint(Canvas canvas, Size size) {
    for (int value = 3; value >= 0; value--) {
      circle(canvas, Rect.fromLTRB(0, 0, size.width, size.height),
          value + animationValue);
    }
  }

  void circle(Canvas canvas, Rect rect, double value) {
    Paint paint = Paint()
      ..color = const Color(0xff19DC7C).withOpacity(
        (1 - (value / 4)).clamp(.0, 1),
      );

    canvas.drawCircle(
      rect.center,
      sqrt((rect.width * .5 * rect.width * .5) * value / 4),
      paint,
    );
  }

  @override
  bool shouldRepaint(MyCustomPainter oldDelegate) {
    return true;
  }
}
