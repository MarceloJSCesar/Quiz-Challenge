import 'package:mobx/mobx.dart';

part 'answer_service.g.dart';

class AnswerService = _AnswerServiceBase with _$AnswerService;

abstract class _AnswerServiceBase with Store {
  @observable
  int index = 0;

  @observable
  double totalScore = .0;

  @action
  void previousQuestion(int value) {
    index -= value;
  }

  @action
  void nextQuestion(double score) {
    totalScore += score;
    index += 1;
  }

  @action
  void playAgain(int value) {
    totalScore = .0;
    index = value;
  }
}
