import 'package:flutter/material.dart';
import 'package:flutter_quiz/data/quest.dart';
import 'package:flutter_quiz/quest_summary.dart';

class ResultsSecreen extends StatelessWidget {
  const ResultsSecreen({
    super.key,
    required this.chosenAnswers,
    required this.onRestart,
  });
  final void Function() onRestart;
  final List<String> chosenAnswers;

  List<Map<String, Object>> getSummary() {
    final List<Map<String, Object>> summmary = [];

    for (var i = 0; i < chosenAnswers.length; i++) {
      summmary.add({
        'q_index': i,
        'question': questions[i].text,
        'c_answer': questions[i].answers[0],
        'user_ans': chosenAnswers[i],
      });
    }

    return summmary;
  }

  @override
  Widget build(BuildContext context) {
    final summaryData = getSummary();
    final numTotal = questions.length;
    final numCorrect = summaryData.where((data) {
      return data['user_ans'] == data['c_answer'];
    }).length;

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'You Answerd $numCorrect out of $numTotal Question',
              style: const TextStyle(
                color: Colors.white,
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 30,
            ),
            QuestSummary(summaryData),
            const SizedBox(
              height: 30,
            ),
            TextButton.icon(
              onPressed: onRestart,
              label: const Text(
                'Restart Quiz',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              style: TextButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 255, 0, 0),
              ),
              icon: const Icon(Icons.restart_alt),
            ),
          ],
        ),
      ),
    );
  }
}
