import 'package:flutter/material.dart';
import 'package:quiz_challenge/core/components/widgets/result_widget.dart';

class ResultView extends StatelessWidget {
  final Function playAgain;
  final double totalScore;
  ResultView(this.playAgain, this.totalScore);
  String get _textResult {
    if (totalScore < .2) {
      return 'So Bad';
    } else if (totalScore < .5) {
      return 'Good';
    } else if (totalScore < .7) {
      return 'Very Good';
    } else if (totalScore < .9) {
      return 'Exellent';
    } else {
      return 'Master';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ResultBody(
        playAgain: playAgain,
        textResult: _textResult,
        totalScore: totalScore,
      ),
    );
  }
}
