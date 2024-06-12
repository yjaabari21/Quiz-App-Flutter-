import 'package:flutter/material.dart';

class QuestIdent extends StatelessWidget {
  const QuestIdent({
    super.key,
    required this.isCorrect,
    required this.questIndex,
  });
  final bool isCorrect;
  final int questIndex;

  @override
  Widget build(BuildContext context) {
    final questNum = questIndex + 1;
    return Container(
        width: 30,
        height: 30,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: isCorrect ? Colors.green : Colors.red,
          borderRadius: BorderRadius.circular(100),
        ),
        child: Text(
          questNum.toString(),
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            color: Color.fromARGB(255, 22, 2, 56),
          ),
        ));
  }
}
