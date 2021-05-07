import 'package:flutter/material.dart';
import 'package:quiz_challenge/app/models/questions.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Container(
              child: index < Representation.questions.length
                  ? Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        // Question(label: 'question1'),
                        // Question(label: 'question2'),
                        // Question(label: 'question3'),
                        Text(Representation.questions[index]['question']),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            ...(Representation.questions[index]['answers']
                                    as dynamic)
                                .map(
                                  (answer) => TextButton(
                                    child: Representation(
                                      questionText: Representation
                                          .questions[index]['question'],
                                      index: index,
                                      answerText: answer['answer'],
                                      fontColor: answer['fontColor'],
                                      borderColor: answer['borderColor'],
                                      fontSize: answer['fontSize'],
                                    ),
                                    onPressed: () => setState(
                                      () {
                                        index++;
                                      },
                                    ),
                                  ),
                                )
                                .toList(),
                          ],
                        ),
                      ],
                    )
                  : Column(
                      children: <Widget>[
                        TextButton(
                          child: Text('Play Again'),
                          onPressed: () => setState(() {
                            index = 0;
                          }),
                        ),
                      ],
                    )),
        ),
      ),
    );
  }
}
