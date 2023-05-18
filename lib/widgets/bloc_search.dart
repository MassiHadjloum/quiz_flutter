import 'package:flutter/material.dart';
import 'package:quiz/constants/data.dart';

class BlocSearch extends StatefulWidget {
  const BlocSearch({super.key});

  @override
  State<BlocSearch> createState() => _BlocSearchState();
}

class _BlocSearchState extends State<BlocSearch> {
  TextEditingController? _controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: main_color,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
            child: Text(
              'Rechrcher votre Quiz',
              style: TextStyle(fontSize: 22, color: Colors.white),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
            child: Text(
              'Rechercher un quiz, et commencez à gagner des points !',
              style: TextStyle(color: Colors.white),
            ),
          ),
          Container(
            margin:
                const EdgeInsets.only(top: 30, left: 10, right: 10, bottom: 5),
            padding: const EdgeInsets.symmetric(vertical: 5),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: TextField(
              controller: _controller,
              clipBehavior: Clip.antiAlias,
              cursorColor: Colors.grey,
              decoration: const InputDecoration(
                hintText: 'Recherche Quiz',
                hintStyle: TextStyle(color: Colors.grey),
                focusedBorder: InputBorder.none,
                border: InputBorder.none,
                prefixIcon: Icon(
                  Icons.search_rounded,
                  color: Colors.grey,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
