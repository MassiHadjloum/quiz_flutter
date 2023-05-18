import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class MyTimer extends StatelessWidget {
  final int time;
  final VoidCallback countingTime;
  const MyTimer({required this.time, required this.countingTime, super.key});

  @override
  Widget build(BuildContext context) {
    countingTime();
    return Container(
      height: 60,
      width: 60,
      margin: const EdgeInsets.only(bottom: 2),
      decoration: BoxDecoration(
        // color: Colors.blueGrey,
        border: Border.all(
          width: 5,
          color: time > 6 ? Colors.amber : Colors.red,
        ),
        borderRadius: BorderRadius.circular(50),
      ),
      alignment: Alignment.center,
      child: Text(
        '${time}',
        style: const TextStyle(fontSize: 20),
      ),
    );
  }
}
