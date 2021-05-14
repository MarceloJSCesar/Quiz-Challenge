import 'package:flutter/material.dart';
import '../representation_widget.dart';
import '../../services/answer_service.dart';
import '../../components/app/app_sizedBox.dart';
import '../../components/widgets/body/representation/website_url_answer_representation.dart';
import '../../components/widgets/body/representation/cara_a_cara_answer_representation.dart';
import '../../components/widgets/body/representation/email_address_answer_representation.dart';
import '../../components/widgets/body/representation/multipla_escolha_answer_representation.dart';

// ignore: must_be_immutable
class BodyWidget extends StatelessWidget {
  final int index;
  final AnswerService answerService;
  String questionType;
  BodyWidget({
    @required this.index,
    @required this.answerService,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          ...(Representation.questions[index]['question'] as dynamic).map(
            (question) {
              questionType = question['type'];
              return Text(
                question['text'],
                style: TextStyle(color: Colors.black, fontSize: 18),
              );
            },
          ).toList(),
          AppSizedBox(
            height: 20,
          ),
          if (questionType == 'cara a cara')
            CaraACaraAnswerRepresentation(
              index: index,
              questionType: questionType,
              answerService: answerService,
            ),
          if (questionType == 'multipla escolha')
            MultiplaEscolhaAnswerRepresentation(
              index: index,
              questionType: questionType,
              answerService: answerService,
            ),
          if (questionType == 'email address')
            EmailAddressAnswerRepresentation(
              index: index,
              answerService: answerService,
            ),
          if (questionType == 'website url')
            WebsiteUrlAnswerRepresentation(
              index: index,
              answerService: answerService,
            ),
        ],
      ),
    );
  }
}
