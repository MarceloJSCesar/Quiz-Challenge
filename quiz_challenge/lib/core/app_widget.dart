import 'package:flutter/material.dart';
import '../core/views/quiz/quiz_view.dart';

class Appwidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: QuizView(),
    );
  }
}
