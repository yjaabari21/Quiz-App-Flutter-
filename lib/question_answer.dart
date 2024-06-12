//import 'package:flutter/material.dart';

class QuizQuestion {
  const QuizQuestion(this.text, this.answers);

  final String text;
  final List<String> answers;

  List<String> getShuffle() {
    final shuffList = List.of(answers);
    shuffList.shuffle();
    return shuffList;
  }
}
