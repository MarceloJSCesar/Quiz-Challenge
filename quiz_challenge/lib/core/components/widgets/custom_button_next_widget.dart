import 'package:flutter/material.dart';
import 'package:wuiz/core/components/app/app_icon_style_component.dart';
import '../app/app_border_style_component.dart';

class CustomButtonNext extends StatelessWidget {
  final Function nextQuestion;
  CustomButtonNext(this.nextQuestion);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        width: 56,
        height: 38,
        padding: const EdgeInsets.all(8.0),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: AppBorderStyle.buttonNextColor,
          border: Border.fromBorderSide(
            BorderSide(
              color: AppBorderStyle.buttonborderSideNextColor,
            ),
          ),
          borderRadius: BorderRadius.circular(5.0),
        ),
        child: AppIconStyle.buttonNextStyle,
      ),
      onTap: nextQuestion,
    );
  }
}
