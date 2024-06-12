import 'package:flutter/material.dart';

class StartQuiz extends StatelessWidget {
  const StartQuiz(this.StaQuiz, {super.key});

  final void Function() StaQuiz;

  @override
  Widget build(contxt) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'images/quiz-logo.png',
          width: 300,
          color: const Color.fromARGB(150, 255, 255, 255),
        ),
        const SizedBox(height: 25),
        const Text(
          "Wolcome to Flutter Quiz Application",
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        OutlinedButton.icon(
          onPressed: StaQuiz,
          style: OutlinedButton.styleFrom(
            foregroundColor: Colors.amber,
            backgroundColor: Colors.black,
          ),
          icon: const Icon(Icons.arrow_right_alt),
          label: const Text('Start Quiz'),
        )
      ],
    );
  }
}
