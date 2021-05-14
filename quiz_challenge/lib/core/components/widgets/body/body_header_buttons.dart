import 'package:flutter/material.dart';
import '../custom_button_next_widget.dart';
import '../../../services/answer_service.dart';
import '../custom_button_previous_widget.dart';
import '../../../components/app/app_sizedBox.dart';

class BodyHeaderButtons extends StatelessWidget {
  final int index;
  final Function previousQuestion;
  final AnswerService answerService;
  BodyHeaderButtons(
      {@required this.index,
      @required this.answerService,
      @required this.previousQuestion});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          if (index >= 1)
            CustomButtonPrevious(() => previousQuestion(1), index),
          AppSizedBox(
            width: 20,
          ),
          CustomButtonNext(
            () => answerService.nextQuestion(.0),
          ),
        ],
      ),
    );
  }
}
