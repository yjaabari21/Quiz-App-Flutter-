import 'package:flutter/material.dart';
//import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_quiz/summary_item.dart';

class QuestSummary extends StatelessWidget {
  const QuestSummary(this.summaryData, {super.key});
  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map(
            (data) {
              return SummaryItem(data);
            },
          ).toList(),
        ),
      ),
    );
  }
}
