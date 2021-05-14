import 'package:flutter/material.dart';
import '../../../representation_widget.dart';
import '../../../../services/answer_service.dart';

class MultiplaEscolhaAnswerRepresentation extends StatelessWidget {
  final int index;
  final String questionType;
  final AnswerService answerService;
  MultiplaEscolhaAnswerRepresentation(
      {@required this.index,
      @required this.questionType,
      @required this.answerService});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ...(Representation.questions[index]['answers'])
            .map(
              (answer) => GestureDetector(
                child: Representation(
                  type: questionType,
                  answers: answer,
                ),
                onTap: () => answerService.nextQuestion(answer['score']),
              ),
            )
            .toList(),
      ],
    );
  }
}
