import 'package:flutter/material.dart';
import '../models/answer.dart';
import '../models/question.dart';

class Representation extends StatelessWidget {
  final Map<String, Object> answers;
  final String type;
  Representation({Key key, this.answers, this.type})
      : assert(['cara a cara', 'multipla escolha', 'email address']
            .contains(type)),
        super(key: key);
  static final questions = [
    {
      'question': [
        {
          'text':
              Question(questionText: 'Do you have a computer?').questionText,
          'type': Question(questionType: 'cara a cara').questionType
        },
      ],
      'answers': [
        {
          'representation': Answer(
            answerRepresentation: Container(
              padding: const EdgeInsets.all(40),
              margin: const EdgeInsets.only(right: 10),
              decoration: BoxDecoration(
                color: Colors.greenAccent.shade200,
                shape: BoxShape.circle,
              ),
              child: Text(
                Answer(
                  answer: 'YES',
                ).answer,
                style: TextStyle(
                    color: Answer(
                      answerTextColor: Colors.white,
                    ).answerTextColor,
                    fontSize: 25),
              ),
            ),
          ).answerRepresentation,
          'score': .3
        },
        {
          'representation': Answer(
            answerRepresentation: Container(
              padding: const EdgeInsets.all(40),
              margin: const EdgeInsets.only(right: 10),
              decoration:
                  BoxDecoration(color: Colors.red, shape: BoxShape.circle),
              child: Text(
                Answer(
                  answer: 'NO',
                ).answer,
                style: TextStyle(
                    color: Answer(
                      answerTextColor: Colors.white,
                    ).answerTextColor,
                    fontSize: 25),
              ),
            ),
          ).answerRepresentation,
          'score': .0,
        },
      ],
    },
    {
      'question': [
        {
          'text':
              Question(questionText: 'First Computer Invented?').questionText,
          'type': Question(questionType: 'multipla escolha').questionType
        },
      ],
      'answers': [
        {
          'representation': Answer(
            answerRepresentation: Container(
              width: double.maxFinite,
              padding: const EdgeInsets.all(10),
              margin: const EdgeInsets.only(bottom: 10),
              decoration: BoxDecoration(
                color: Colors.grey[100],
                border: Border.fromBorderSide(
                  BorderSide(color: Colors.black),
                ),
              ),
              child: Text(
                'Obacus',
                style: TextStyle(
                  color: Colors.green,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ).answerRepresentation,
          'score': .3,
        },
        {
          'representation': Answer(
            answerRepresentation: Container(
              width: double.maxFinite,
              padding: const EdgeInsets.all(10),
              margin: const EdgeInsets.only(bottom: 10),
              decoration: BoxDecoration(
                color: Colors.grey[100],
                border: Border.fromBorderSide(
                  BorderSide(color: Colors.black),
                ),
              ),
              child: Text(
                'Pascaline',
                style: TextStyle(
                  color: Colors.green,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ).answerRepresentation,
          'score': .0,
        },
        {
          'representation': Answer(
            answerRepresentation: Container(
              width: double.maxFinite,
              padding: const EdgeInsets.all(10),
              margin: const EdgeInsets.only(bottom: 10),
              decoration: BoxDecoration(
                color: Colors.grey[100],
                border: Border.fromBorderSide(
                  BorderSide(color: Colors.black),
                ),
              ),
              child: Text(
                'Mapquina Analitica',
                style: TextStyle(
                  color: Colors.green,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ).answerRepresentation,
          'score': .0,
        },
      ],
    },
    {
      'question': [
        {
          'text':
              Question(questionText: 'What is your email address').questionText,
          'type': Question(questionType: 'email address').questionType
        },
      ],
      'answers': [
        {
          'representation': Answer(
            answerRepresentation: Container(),
          ).answerRepresentation,
          'score': .4
        },
      ],
    },
  ];
  @override
  Widget build(BuildContext context) {
    return answers['representation'];
  }
}
