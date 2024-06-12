import 'package:flutter/material.dart';

class AnsewrButton extends StatelessWidget {
  const AnsewrButton({
    super.key,
    required this.answerTxt,
    required this.onTap,
  });

  final String answerTxt;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.red,
        foregroundColor: Colors.white,
        padding: const EdgeInsets.symmetric(
          vertical: 10,
          horizontal: 40,
        ),
      ),
      child: Text(
        answerTxt,
        style: const TextStyle(
          fontSize: 15,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
