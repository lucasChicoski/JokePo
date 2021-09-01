// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'jokenpo_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$JokenPoController on JokenPoControllerBase, Store {
  final _$titleResultAtom = Atom(name: 'JokenPoControllerBase.titleResult');

  @override
  String get titleResult {
    _$titleResultAtom.reportRead();
    return super.titleResult;
  }

  @override
  set titleResult(String value) {
    _$titleResultAtom.reportWrite(value, super.titleResult, () {
      super.titleResult = value;
    });
  }

  final _$resultImageWithOutBackGroundAtom =
      Atom(name: 'JokenPoControllerBase.resultImageWithOutBackGround');

  @override
  String get resultImageWithOutBackGround {
    _$resultImageWithOutBackGroundAtom.reportRead();
    return super.resultImageWithOutBackGround;
  }

  @override
  set resultImageWithOutBackGround(String value) {
    _$resultImageWithOutBackGroundAtom
        .reportWrite(value, super.resultImageWithOutBackGround, () {
      super.resultImageWithOutBackGround = value;
    });
  }

  final _$JokenPoControllerBaseActionController =
      ActionController(name: 'JokenPoControllerBase');

  @override
  void generateStone() {
    final _$actionInfo = _$JokenPoControllerBaseActionController.startAction(
        name: 'JokenPoControllerBase.generateStone');
    try {
      return super.generateStone();
    } finally {
      _$JokenPoControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void generatePaper() {
    final _$actionInfo = _$JokenPoControllerBaseActionController.startAction(
        name: 'JokenPoControllerBase.generatePaper');
    try {
      return super.generatePaper();
    } finally {
      _$JokenPoControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void generateScizors() {
    final _$actionInfo = _$JokenPoControllerBaseActionController.startAction(
        name: 'JokenPoControllerBase.generateScizors');
    try {
      return super.generateScizors();
    } finally {
      _$JokenPoControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
titleResult: ${titleResult},
resultImageWithOutBackGround: ${resultImageWithOutBackGround}
    ''';
  }
}
