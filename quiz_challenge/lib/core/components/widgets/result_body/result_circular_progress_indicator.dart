import 'package:flutter/material.dart';
import '../../../components/app/app_border_style_component.dart';

class ResultCircularProgressIndicator extends StatelessWidget {
  final double totalScore;
  ResultCircularProgressIndicator({@required this.totalScore});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: 80,
      child: CircularProgressIndicator(
        value: totalScore,
        valueColor:
            AlwaysStoppedAnimation<Color>(AppBorderStyle.buttonNextColor),
        strokeWidth: 10,
        backgroundColor: Colors.white,
      ),
    );
  }
}
