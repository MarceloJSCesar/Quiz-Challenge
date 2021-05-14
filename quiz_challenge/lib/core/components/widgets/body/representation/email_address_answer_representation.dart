import 'package:flutter/material.dart';
import 'package:email_validator/email_validator.dart';
import '../../../representation_widget.dart';
import '../../../../services/answer_service.dart';

// ignore: must_be_immutable
class EmailAddressAnswerRepresentation extends StatelessWidget {
  final int index;
  final AnswerService answerService;
  GlobalKey<FormState> formkey = GlobalKey<FormState>();
  EmailAddressAnswerRepresentation(
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
                    validator: (val) {
                      if (!EmailValidator.validate(val)) {
                        return 'email invalid';
                      } else {
                        return null;
                      }
                    },
                    textInputAction: TextInputAction.done,
                    onFieldSubmitted: (val) => formkey.currentState.validate()
                        ? answerService.nextQuestion(answer['score'])
                        : null,
                    decoration: InputDecoration(
                      hintText: 'Enter your email',
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