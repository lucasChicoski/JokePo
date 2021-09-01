import 'dart:math';

import 'package:jokepo/break_points/emotions.dart';
import 'package:jokepo/break_points/images.dart';
import 'package:mobx/mobx.dart';

part 'jokenpo_controller.g.dart';

class JokenPoController = JokenPoControllerBase with _$JokenPoController;

abstract class JokenPoControllerBase with Store {
  JokenPoControllerBase() {
    autorun((_) {});
  }
  // ################## ############PORTRAIT
  @observable
  String titleResult = 'Vamos ver se você ganha !!!!!';

  @observable
  String resultImageWithOutBackGround = question1;

  //PARTE DO JOGO

  int? resultStone;
  int? resultPaper;
  int? resultScizors;

  int stone = 0;
  int paper = 1;
  int scizor = 2;

  @action
  void generateStone() {
    var random = new Random();
    resultStone = random.nextInt(3);

  

    if (resultStone == 0) {
      resultImageWithOutBackGround = pedra1;
    } else if (resultStone == 1) {
      resultImageWithOutBackGround = papel1;
    } else {
      resultImageWithOutBackGround = tesoura1;
    }

    if (resultStone == scizor) {
      titleResult = 'Você Ganhou ${win}';
    } else if (resultStone == stone) {
      titleResult = 'Empatou ${draw}';
    } else {
      titleResult = 'Você Perdeu ${loose}';
    }
  }

  @action
  void generatePaper() {
    var random = new Random();
    resultPaper = random.nextInt(3);
    

    if (resultPaper == 0) {
      resultImageWithOutBackGround = pedra1;
    } else if (resultPaper == 1) {
      resultImageWithOutBackGround = papel1;
    } else {
      resultImageWithOutBackGround = tesoura1;
    }

    if (resultPaper == stone) {
      titleResult = 'Você Ganhou ${win}';
    } else if (resultPaper == paper) {
      titleResult = 'Empatou ${draw}';
    } else {
      titleResult = 'Você Perdeu ${loose}';
    }
  }

  @action
  void generateScizors() {
    var random = new Random();
    resultScizors = random.nextInt(3);
   
    if (resultScizors == 0) {
      resultImageWithOutBackGround = pedra1;
    } else if (resultScizors == 1) {
      resultImageWithOutBackGround = papel1;
    } else {
      resultImageWithOutBackGround = tesoura1;
    }

    if (resultScizors == paper) {
      titleResult = 'Você Ganhou ${win}';
    } else if (resultScizors == scizor) {
      titleResult = 'Empatou ${draw}';
    } else {
      titleResult = 'Você Perdeu ${loose}';
    }
  }
}
