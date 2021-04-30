import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:quiz_challenge/core/components/app/style/app_text_style-component.dart';
import 'package:quiz_challenge/core/components/app/widgets/custom_answer_button.dart';
import 'package:quiz_challenge/core/views/result/result_view.dart';
import '../../models/answer_model.dart';
import '../../models/question_model.dart';
import '../../services/quiz_services.dart';
import '../../components/app/widgets/custom_sizedBox.dart';
import '../../components/app/widgets/custom_button_next_widget.dart';
import '../../components/app/widgets/custom_button_previous_widget.dart';
import '../../components/quiz/quiz_linear_progress_indicator_component.dart';

class QuizView extends StatefulWidget {
  @override
  _QuizViewState createState() => _QuizViewState();
}

class _QuizViewState extends State<QuizView> {
  final _quizServices = QuizServices();
  int get _index => _quizServices.questionIndex;
  final quiz = [
    {
      'question':
          Question(questionText: 'What\'s the first language ?').questionText,
      'answers': [
        {'answer': Answer(answerText: 'SIMULA').answerText, 'score': .0},
        {'answer': Answer(answerText: 'Cobol').answerText, 'score': .2},
      ],
    },
    {
      'question':
          Question(questionText: 'When JavaScript were created ?').questionText,
      'answers': [
        {'answer': Answer(answerText: '1995').answerText, 'score': .2},
        {'answer': Answer(answerText: '2005').answerText, 'score': .0},
        {'answer': Answer(answerText: '1895').answerText, 'score': .0},
        {'answer': Answer(answerText: '2001').answerText, 'score': .1},
      ],
    },
    {
      'question':
          Question(questionText: 'The best time to code ?').questionText,
      'answers': [
        {'answer': Answer(answerText: 'Night').answerText, 'score': .2},
        {'answer': Answer(answerText: 'Morning').answerText, 'score': .2},
        {'answer': Answer(answerText: 'Afternoon').answerText, 'score': .1},
      ],
    },
    {
      'question': Question(questionText: 'What\'s your computer').questionText,
      'answers': [
        {
          'answer': Answer(answerText: 'Macbook pro 2019').answerText,
          'score': .4
        },
        {'answer': Answer(answerText: 'Intel').answerText, 'score': .4},
        {'answer': Answer(answerText: 'Toshiba').answerText, 'score': .1},
        {'answer': Answer(answerText: 'Dell').answerText, 'score': .4},
        {'answer': Answer(answerText: 'HP').answerText, 'score': .3},
      ],
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Observer(
        builder: (context) {
          return Container(
            child: _index < quiz.length
                ? Column(
                    children: <Widget>[
                      SizedBox(height: 23),
                      QuizLinearProgressIndicator(
                        value: _index / quiz.length ?? .0,
                      ),
                      Container(
                        margin: const EdgeInsets.fromLTRB(10, 10, 20, 0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            _index >= 1
                                ? CustomButtonPrevious(
                                    _quizServices.previousQuestion, 1)
                                : Container(),
                            CustomSizedBox(width: 20),
                            CustomButtonNext(
                                () => _quizServices.nextQuestion(0.0)),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              quiz[_index]['question'],
                              style: AppTextStyle.questionText,
                            ),
                            CustomSizedBox(
                              height: 10,
                            ),
                            ...(quiz[_index]['answers']
                                    as List<Map<String, Object>>)
                                .map(
                                  (answer) => CustomAnswerButton(
                                    answerText: answer['answer'],
                                    nextQuestion: () => _quizServices
                                        .nextQuestion(answer['score']),
                                  ),
                                )
                                .toList(),
                          ],
                        ),
                      ),
                    ],
                  )
                : ResultView(_quizServices.playAgain, _quizServices.totalScore),
          );
        },
      ),
    );
  }
}
