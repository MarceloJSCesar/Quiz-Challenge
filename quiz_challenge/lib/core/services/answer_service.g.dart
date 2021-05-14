// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'answer_service.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$AnswerService on _AnswerServiceBase, Store {
  final _$indexAtom = Atom(name: '_AnswerServiceBase.index');

  @override
  int get index {
    _$indexAtom.reportRead();
    return super.index;
  }

  @override
  set index(int value) {
    _$indexAtom.reportWrite(value, super.index, () {
      super.index = value;
    });
  }

  final _$totalScoreAtom = Atom(name: '_AnswerServiceBase.totalScore');

  @override
  double get totalScore {
    _$totalScoreAtom.reportRead();
    return super.totalScore;
  }

  @override
  set totalScore(double value) {
    _$totalScoreAtom.reportWrite(value, super.totalScore, () {
      super.totalScore = value;
    });
  }

  final _$_AnswerServiceBaseActionController =
      ActionController(name: '_AnswerServiceBase');

  @override
  void previousQuestion(int value) {
    final _$actionInfo = _$_AnswerServiceBaseActionController.startAction(
        name: '_AnswerServiceBase.previousQuestion');
    try {
      return super.previousQuestion(value);
    } finally {
      _$_AnswerServiceBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void nextQuestion(double score) {
    final _$actionInfo = _$_AnswerServiceBaseActionController.startAction(
        name: '_AnswerServiceBase.nextQuestion');
    try {
      return super.nextQuestion(score);
    } finally {
      _$_AnswerServiceBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void playAgain(int value) {
    final _$actionInfo = _$_AnswerServiceBaseActionController.startAction(
        name: '_AnswerServiceBase.playAgain');
    try {
      return super.playAgain(value);
    } finally {
      _$_AnswerServiceBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
index: ${index},
totalScore: ${totalScore}
    ''';
  }
}
