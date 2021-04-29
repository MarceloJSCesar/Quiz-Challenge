import 'package:flutter/material.dart';
import 'package:quiz_challenge/core/components/app/style/app_linear_indicator_color.dart';

class QuizLinearProgressIndicator extends StatelessWidget {
  final double value;
  QuizLinearProgressIndicator({@required this.value});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: LinearProgressIndicator(
          value: value,
          valueColor: AlwaysStoppedAnimation<Color>(
              QuizLinearProgressIndicatorColor.linearProgressIndicatorColor),
          backgroundColor: Colors.white),
    );
  }
}
