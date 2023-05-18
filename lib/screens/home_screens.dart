import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:quiz/constants/data.dart';
import 'package:quiz/models/questions.dart';
import 'package:quiz/screens/questions_screen.dart';
import 'package:quiz/widgets/bloc_search.dart';

class HomePage extends StatelessWidget {
  final String title;
  const HomePage({required this.title, super.key});

  @override
  Widget build(BuildContext context) {
    final module_questions = questions;
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: const Text('HOME PAGE'),
      ),
      body: Container(
        child: Column(
          children: [
            const BlocSearch(),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Modules',
                  textAlign: TextAlign.start,
                  style: TextStyle(fontSize: 23),
                ),
              ),
            ),
            Flexible(
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40)),
                child: Container(
                  padding: const EdgeInsets.only(top: 20),
                  color: Colors.grey[200],
                  child: ListView.builder(
                    itemCount: questions.length,
                    itemBuilder: ((context, index) {
                      return Container(
                        margin: const EdgeInsets.symmetric(
                          horizontal: 30,
                          vertical: 10,
                        ),
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(35),
                        ),
                        child: InkWell(
                          borderRadius: BorderRadius.circular(35),
                          child: ListTile(
                            leading: const Icon(
                              Icons.mark_chat_unread_rounded,
                              size: 40,
                            ),
                            title: Text(
                              questions[index].keys.first.toString(),
                              style: const TextStyle(
                                fontSize: 23,
                              ),
                            ),
                            subtitle: const Text("ZECV45"),
                          ),
                          onTap: () {
                            Navigator.of(context).pushNamed(
                              QuestionScreen.route,
                              arguments: questions[index],
                            );
                          },
                        ),
                      );
                    }),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
