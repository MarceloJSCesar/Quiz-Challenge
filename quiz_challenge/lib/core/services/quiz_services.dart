import 'package:mobx/mobx.dart';

part 'quiz_services.g.dart';

class QuizServices = _QuizServicesBase with _$QuizServices;

abstract class _QuizServicesBase with Store {
  @observable
  int questionIndex = 0;

  @action
  void nextQuestion() {
    questionIndex += 1;
  }

  @action
  void previousQuestion(int value) {
    questionIndex -= value;
  }

  @action
  void playAgain() {
    questionIndex = 0;
  }
}
