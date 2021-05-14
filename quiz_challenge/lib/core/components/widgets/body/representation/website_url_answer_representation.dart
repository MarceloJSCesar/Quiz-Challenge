import 'package:flutter/material.dart';
import '../../../representation_widget.dart';
import '../../../../services/answer_service.dart';

// ignore: must_be_immutable
class WebsiteUrlAnswerRepresentation extends StatelessWidget {
  final int index;
  final AnswerService answerService;
  GlobalKey<FormState> formkey = GlobalKey<FormState>();
  WebsiteUrlAnswerRepresentation(
      {@required this.index, @required this.answerService});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ...(Representation.questions[index]['answers'])
            .map(
              (answer) => Form(
                key: formkey,
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  child: TextFormField(
                    autovalidateMode: AutovalidateMode.always,
                    textInputAction: TextInputAction.done,
                    validator: (val) {
                      if (!val.startsWith('https://') &&
                              !val.startsWith('http://') ||
                          val.length < 15 ||
                          !val.contains('.')) {
                        return 'invalid url';
                      } else {
                        return null;
                      }
                    },
                    onFieldSubmitted: (val) => formkey.currentState.validate()
                        ? answerService.nextQuestion(answer['score'])
                        : null,
                    decoration: InputDecoration(
                      hintText: 'Enter your website url',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
              ),
            )
            .toList(),
      ],
    );
  }
}
