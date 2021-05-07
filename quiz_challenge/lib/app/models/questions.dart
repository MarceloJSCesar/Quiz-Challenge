import 'package:flutter/material.dart';

class Question {
  final String question;
  Question({this.question});
}

class Representation extends StatelessWidget {
  final Color borderColor;
  final Color fontColor;
  final double fontSize;
  final String answerText;
  final String questionText;
  final int index;
  Representation({
    Key key,
    this.borderColor,
    this.index,
    this.answerText,
    this.fontColor,
    this.fontSize,
    this.questionText,
  })  : assert(
          [
            Question(question: 'what\'s your dog\'s name?').question,
            Question(question: 'what\'s your cat\'s name?').question,
            Question(question: 'what\'s your mom\'s name?').question,
          ].contains(questionText),
        ),
        super(key: key);

  static final questions = [
    {
      'question': 'what\'s your dog\'s name?',
      'answers': {
        {
          'answer': 'fifi',
          'type': String,
          'color': Colors.black,
          'fontSize': 16.0,
          'borderColor': Colors.amberAccent
        },
        {
          'answer': 'bob',
          'type': String,
          'color': Colors.yellow,
          'fontSize': 16.0,
          'borderColor': Colors.greenAccent
        },
        {
          'answer': 'dira',
          'type': String,
          'color': Colors.red,
          'fontSize': 16.0,
          'borderColor': Colors.blue
        },
      }
    },
    {
      'question': 'what\'s your cat\'s name?',
      'answers': {
        {
          'answer': 'no name',
          'type': String,
          'color': Colors.blue,
          'fontSize': 16.0,
          'borderColor': Colors.red
        },
        {
          'answer': 'roudi',
          'type': String,
          'color': Colors.grey,
          'fontSize': 16.0,
          'borderColor': Colors.yellow
        },
        {
          'answer': 'radi',
          'type': String,
          'color': Colors.green,
          'fontSize': 16.0,
          'borderColor': Colors.blue
        },
      }
    },
    {
      'question': 'what\'s your mom\'s name?',
      'answers': {
        {
          'answer': 'stephany',
          'type': String,
          'color': Colors.greenAccent,
          'fontSize': 16.0,
          'borderColor': Colors.green
        },
        {
          'answer': 'sophia',
          'type': String,
          'color': Colors.brown,
          'fontSize': 16.0,
          'borderColor': Colors.red
        },
        {
          'answer': 'Phia',
          'type': String,
          'color': Colors.orange,
          'fontSize': 16.0,
          'borderColor': Colors.blue
        },
      }
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          border: Border.fromBorderSide(BorderSide(color: borderColor))),
      child: Text(
        answerText,
        style: TextStyle(color: fontColor),
      ),
    );
  }
}

// class Question extends StatelessWidget {
//   final String label;
//   Question({Key key, this.label})
//       : assert(['question1', 'question2', 'question3'].contains(label)),
//         super(key: key);
//   final questions = {
//     'question1': {
//       'text': 'dog\'s name ?',
//       'color': Colors.red,
//       'fontSize': 15.0,
//       'type': String
//     },
//     'question2': {
//       'text': 'cat\'s name?',
//       'color': Colors.blue,
//       'fontSize': 16.0,
//       'type': String
//     },
//     'question3': {
//       'text': 'computer\'s model?',
//       'color': Colors.yellow,
//       'fontSize': 15.0,
//       'type': String
//     },
//   };

//   String get text => questions[label]['text'];
//   Color get color => questions[label]['color'];
//   double get fontSize => questions[label]['fontSize'];
//   dynamic get type => questions[label]['type'];

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: const EdgeInsets.all(10),
//       decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(20),
//           border: Border.fromBorderSide(BorderSide(
//             color: Colors.black,
//           ))),
//       child: type == String
//           ? Text(
//               text,
//               style: TextStyle(
//                 color: color,
//                 fontSize: fontSize,
//               ),
//             )
//           : Container(),
//     );
//   }
// }
