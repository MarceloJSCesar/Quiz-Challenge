import 'package:flutter/material.dart';
import '../../../representation_widget.dart';
import '../../../../services/answer_service.dart';

class EmailAddressAnswerRepresentation extends StatelessWidget {
  final int index;
  final AnswerService answerService;
  EmailAddressAnswerRepresentation(
      {@required this.index, @required this.answerService});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ...(Representation.questions[index]['answers'])
            .map(
              (answer) => Container(
                margin: const EdgeInsets.symmetric(horizontal: 20),
                child: TextFormField(
                  textInputAction: TextInputAction.done,
                  onFieldSubmitted: (val) =>
                      answerService.nextQuestion(answer['score']),
                  decoration: InputDecoration(
                    hintText: 'Enter your email',
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
            )
            .toList(),
      ],
    );
  }
}
