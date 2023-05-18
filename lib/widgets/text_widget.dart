import 'package:flutter/material.dart';

Widget TextWidget(
  String text,
  double size,
) {
  return Text(
    text,
    style: TextStyle(
      fontSize: size,
    ),
  );
}
