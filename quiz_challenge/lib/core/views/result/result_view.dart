import 'package:flutter/material.dart';

class ResultView extends StatefulWidget {
  final Function playAgain;
  ResultView(this.playAgain);
  @override
  _ResultViewState createState() => _ResultViewState();
}

class _ResultViewState extends State<ResultView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            TextButton(
              onPressed: () => widget.playAgain(),
              child: Text('Play again'),
            )
          ],
        ),
      ),
    );
  }
}
