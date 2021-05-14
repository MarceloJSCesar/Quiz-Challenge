import 'package:flutter/material.dart';
import '../../representation_widget.dart';

class BodyLinearProgressIndicator extends StatelessWidget {
  final int index;
  BodyLinearProgressIndicator({@required this.index});
  @override
  Widget build(BuildContext context) {
    return LinearProgressIndicator(
      value: index / Representation.questions.length ?? .0,
      backgroundColor: Colors.grey,
      valueColor: AlwaysStoppedAnimation<Color>(
        Colors.greenAccent,
      ),
    );
  }
}
