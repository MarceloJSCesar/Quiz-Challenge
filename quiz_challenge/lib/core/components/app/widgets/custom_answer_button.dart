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
      child: GestureDetector(
          child: Text(
            answerText,
            style: AppTextStyle.answerText,
          ),
          onTap: () => nextQuestion()),
    );
  }
}
