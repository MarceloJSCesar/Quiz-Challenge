import 'package:flutter/material.dart';
import '../app/app_text_style-component.dart';

class CustomAnswerButton extends StatelessWidget {
  final String answerText;
  final Function nextQuestion;
  final double totalScore;
  CustomAnswerButton(
      {@required this.answerText, this.nextQuestion, this.totalScore});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      width: double.maxFinite,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
      child: ElevatedButton(
          child: Text(
            answerText,
            textAlign: TextAlign.center,
            style: AppTextStyle.answerText,
          ),
          onPressed: nextQuestion),
    );
  }
}
