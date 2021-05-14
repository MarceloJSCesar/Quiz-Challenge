import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:quiz_challenge/core/components/widgets/body/body_header_buttons.dart';
import 'package:quiz_challenge/core/components/widgets/body/body_linear_progress_indicator.dart';
import 'package:quiz_challenge/core/components/widgets/body_widget.dart';
import 'package:quiz_challenge/core/components/widgets/result_page.dart';
import '../services/answer_service.dart';
import '../components/app/app_sizedBox.dart';
import '../components/representation_widget.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final _answerService = AnswerService();
  int get index => _answerService.index;
  double get totalScore => _answerService.totalScore;
  void get previousQuestion => _answerService.previousQuestion(1);
  void get playAgain => _answerService.playAgain(0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Observer(
        builder: (context) => Container(
          child: index < Representation.questions.length
              ? Column(
                  children: <Widget>[
                    AppSizedBox(
                      height: 23,
                    ),
                    BodyLinearProgressIndicator(index: index),
                    AppSizedBox(
                      height: 10,
                    ),
                    BodyHeaderButtons(
                      index: index,
                      answerService: _answerService,
                      previousQuestion: _answerService.previousQuestion,
                    ),
                    Expanded(
                      child: BodyWidget(
                        index: index,
                        answerService: _answerService,
                      ),
                    ),
                  ],
                )
              : ResultView(_answerService.playAgain, totalScore),
        ),
      ),
    );
  }
}
