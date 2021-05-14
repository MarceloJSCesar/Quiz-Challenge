import 'package:flutter/material.dart';
import '../app/app_border_style_component.dart';
import '../app/app_icon_style_component.dart';

class CustomButtonPrevious extends StatelessWidget {
  final Function previousQuestion;
  final int index;
  CustomButtonPrevious(this.previousQuestion, this.index);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        width: 30,
        height: 35,
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color: AppBorderStyle.buttonPreviousColor,
            border: Border.fromBorderSide(
              BorderSide(color: AppBorderStyle.buttonBorderSidePreviousColor),
            ),
            borderRadius: BorderRadius.circular(4.0),
            boxShadow: [
              BoxShadow(color: Colors.black),
            ]),
        child: AppIconStyle.buttonPreviousStyle,
      ),
      onTap: previousQuestion,
    );
  }
}
