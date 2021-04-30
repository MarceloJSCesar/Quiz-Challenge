import 'package:flutter/material.dart';
import 'package:quiz_challenge/core/components/app/style/app_border_style_component.dart';
import 'package:quiz_challenge/core/components/app/style/app_text_style-component.dart';

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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Expanded(child: Container()),
          Container(
            alignment: Alignment.centerLeft,
            margin: const EdgeInsets.symmetric(horizontal: 20),
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.grey[200],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Stack(
                  alignment: Alignment.centerLeft,
                  children: <Widget>[
                    Container(
                      height: 80,
                      width: 80,
                      child: CircularProgressIndicator(
                        value: totalScore,
                        valueColor: AlwaysStoppedAnimation<Color>(
                            AppBorderStyle.buttonNextColor),
                        strokeWidth: 10,
                        backgroundColor: Colors.white,
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.only(left: 20),
                      child: Text(
                        totalScore.toStringAsFixed(2),
                        textAlign: TextAlign.left,
                        style: AppTextStyle.totalScoreText,
                      ),
                    ),
                  ],
                ),
                Expanded(
                  child: Column(
                    children: <Widget>[
                      Text(
                        _textResult,
                        style: AppTextStyle.questionText,
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Expanded(child: Container()),
          ElevatedButton(
              onPressed: () => playAgain(), child: Text('Play Again'))
        ],
      ),
    );
  }
}
