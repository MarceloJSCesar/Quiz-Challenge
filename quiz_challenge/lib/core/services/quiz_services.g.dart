// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quiz_services.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$QuizServices on _QuizServicesBase, Store {
  final _$questionIndexAtom = Atom(name: '_QuizServicesBase.questionIndex');

  @override
  int get questionIndex {
    _$questionIndexAtom.reportRead();
    return super.questionIndex;
  }

  @override
  set questionIndex(int value) {
    _$questionIndexAtom.reportWrite(value, super.questionIndex, () {
      super.questionIndex = value;
    });
  }

  final _$_QuizServicesBaseActionController =
      ActionController(name: '_QuizServicesBase');

  @override
  void nextQuestion() {
    final _$actionInfo = _$_QuizServicesBaseActionController.startAction(
        name: '_QuizServicesBase.nextQuestion');
    try {
      return super.nextQuestion();
    } finally {
      _$_QuizServicesBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void previousQuestion(int value) {
    final _$actionInfo = _$_QuizServicesBaseActionController.startAction(
        name: '_QuizServicesBase.previousQuestion');
    try {
      return super.previousQuestion(value);
    } finally {
      _$_QuizServicesBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void playAgain() {
    final _$actionInfo = _$_QuizServicesBaseActionController.startAction(
        name: '_QuizServicesBase.playAgain');
    try {
      return super.playAgain();
    } finally {
      _$_QuizServicesBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
questionIndex: ${questionIndex}
    ''';
  }
}
