import 'package:flutter/material.dart';
import '../../components/app/app_text_style-component.dart';
import 'result_body/result_circular_progress_indicator.dart';

class ResultBody extends StatelessWidget {
  final double totalScore;
  final String textResult;
  final Function playAgain;
  ResultBody(
      {@required this.playAgain,
      @required this.textResult,
      @required this.totalScore});
  @override
  Widget build(BuildContext context) {
    return Column(
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
                  ResultCircularProgressIndicator(totalScore: totalScore),
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
                      textResult,
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
          onPressed: () => playAgain(0),
          child: Text('Play Again'),
        ),
      ],
    );
  }
}
