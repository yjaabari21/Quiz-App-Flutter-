import 'package:flutter/material.dart';
import 'package:flutter_quiz/styled_btn.dart';
import "package:flutter_quiz/data/quest.dart";

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({
    super.key,
    required this.onSelect,
  });

  final void Function(String ansewr) onSelect;

  @override
  State<QuestionScreen> createState() {
    return _QuestionScreenState();
  }
}

class _QuestionScreenState extends State<QuestionScreen> {
  var currentQuestIndex = 0;

  void ansewrQuest(String selectedAnswer) {
    widget.onSelect(selectedAnswer);
    setState(() {
      currentQuestIndex++;
    });
  }

  @override
  Widget build(context) {
    final currentQuestion = questions[currentQuestIndex];

    return Container(
      margin: const EdgeInsets.all(20),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            currentQuestion.text,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 27,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 30),
          ...currentQuestion.getShuffle().map((ansewr) {
            return AnsewrButton(
              answerTxt: ansewr,
              onTap: () {
                ansewrQuest(ansewr);
              },
            );
          }),
        ],
      ),
    );
  }
}
