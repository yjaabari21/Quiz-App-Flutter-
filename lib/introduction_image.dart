import 'package:flutter/material.dart';

class QuizImage extends StatelessWidget {
  const QuizImage({super.key});

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
          "Wolcome to Quiz Application",
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
          onPressed: () {
            //....here
          },
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
