import 'package:flutter/material.dart';

class AppSizedBox extends StatelessWidget {
  final double height;
  final double width;
  AppSizedBox({this.height, this.width});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
    );
  }
}
