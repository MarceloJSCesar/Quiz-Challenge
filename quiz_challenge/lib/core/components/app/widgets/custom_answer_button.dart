import 'package:flutter/material.dart';
import '../style/app_text_style-component.dart';

class CustomAnswerButton extends StatelessWidget {
  final String answerText;
  final Function nextQuestion;
  CustomAnswerButton({@required this.answerText, this.nextQuestion});
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
          onPressed: () => nextQuestion()),
    );
  }
}
