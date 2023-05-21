import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class MyTimer extends StatelessWidget {
  final int time;
  final VoidCallback countingTime;
  const MyTimer({
    required this.time,
    required this.countingTime,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    countingTime();
    return Stack(alignment: Alignment.center, children: [
      Container(
        height: 60,
        width: 60,
        padding: const EdgeInsets.all(10),
        margin: const EdgeInsets.only(bottom: 2),
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 255, 255, 255),
          borderRadius: BorderRadius.circular(50),
        ),
        alignment: Alignment.center,
        child: Transform.scale(
          scale: 1.5,
          child: CircularProgressIndicator(
            color: Colors.purple,
            value: time / (15),
            valueColor: const AlwaysStoppedAnimation<Color>(Colors.purple),
          ),
        ),
      ),
      Positioned(
        top: 17,
        left: 18,
        child: Text(
          '${time.toString().padLeft(2, '0')}',
          style: const TextStyle(fontSize: 20),
        ),
      ),
    ]);
  }
}
