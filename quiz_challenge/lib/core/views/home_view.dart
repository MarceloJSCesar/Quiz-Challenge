import 'package:flutter/material.dart';
import 'package:wuiz/core/components/app/app_sizedBox.dart';
import 'package:wuiz/core/components/representation_widget.dart';
import 'package:wuiz/core/components/widgets/custom_button_next_widget.dart';
import 'package:wuiz/core/components/widgets/custom_button_previous_widget.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  String questionType;
  int index = 0;
  double totalScore = .0;

  void previousQuestion(int value) {
    setState(
      () {
        index -= value;
      },
    );
  }

  void nextQuestion(double score) {
    setState(() {
      totalScore += score;
      index += 1;
    });
  }

  void playAgain(int value) {
    setState(() {
      totalScore = .0;
      index = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: index < Representation.questions.length
            ? Column(
                children: [
                  SizedBox(
                    height: 23,
                  ),
                  LinearProgressIndicator(
                    value: index / Representation.questions.length ?? .0,
                    backgroundColor: Colors.grey,
                    valueColor: AlwaysStoppedAnimation<Color>(
                      Colors.greenAccent,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    margin: const EdgeInsets.only(right: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        if (index >= 1)
                          CustomButtonPrevious(
                              () => previousQuestion(1), index),
                        CustomSizedBox(
                          width: 20,
                        ),
                        CustomButtonNext(
                          () => nextQuestion(.0),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          ...(Representation.questions[index]['question']
                                  as dynamic)
                              .map(
                            (question) {
                              questionType = question['type'];
                              return Text(
                                question['text'],
                                style: TextStyle(
                                    color: Colors.black, fontSize: 18),
                              );
                            },
                          ).toList(),
                          SizedBox(
                            height: 20,
                          ),
                          if (questionType == 'cara a cara')
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                ...(Representation.questions[index]['answers'])
                                    .map(
                                  (answer) {
                                    return GestureDetector(
                                      child: Representation(
                                        type: questionType,
                                        answers: answer,
                                      ),
                                      onTap: () =>
                                          nextQuestion(answer['score']),
                                    );
                                  },
                                ).toList(),
                              ],
                            ),
                          if (questionType == 'multipla escolha')
                            ...(Representation.questions[index]['answers']).map(
                              (answer) {
                                return GestureDetector(
                                  child: Representation(
                                    type: questionType,
                                    answers: answer,
                                  ),
                                  onTap: () => nextQuestion(answer['score']),
                                );
                              },
                            ).toList(),
                          if (questionType == 'email address')
                            ...(Representation.questions[index]['answers']).map(
                              (answer) {
                                return Container(
                                  margin: const EdgeInsets.symmetric(
                                      horizontal: 40),
                                  child: TextFormField(
                                    textInputAction: TextInputAction.done,
                                    onFieldSubmitted: (val) =>
                                        nextQuestion(answer['score']),
                                    decoration: InputDecoration(
                                      hintText: 'Enter your email',
                                      border: OutlineInputBorder(),
                                    ),
                                  ),
                                );
                              },
                            ).toList(),
                        ],
                      ),
                    ),
                  ),
                ],
              )
            : Center(
                child: TextButton(
                  child: Text('Play Again | score: $totalScore '),
                  onPressed: () => playAgain(0),
                ),
              ),
      ),
    );
  }
}
