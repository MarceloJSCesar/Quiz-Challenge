import 'package:flutter/material.dart';

class CustomSizedBox extends StatelessWidget {
  final double height;
  final double width;
  CustomSizedBox({this.height, this.width});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
    );
  }
}
