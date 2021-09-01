import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';
import 'package:jokepo/break_points/emotions.dart';
import 'package:jokepo/break_points/images.dart';
import 'package:jokepo/controllers/jokenpo_controller.dart';

class JokePoLandScape extends StatefulWidget {
  @override
  _JokePoLandScapeState createState() => _JokePoLandScapeState();
}

class _JokePoLandScapeState extends State<JokePoLandScape> {
  JokenPoController jokenPoController = GetIt.I<JokenPoController>();
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      print('Tela LandScape');
      print(constraints.maxWidth);
      print(constraints.biggest);
      return Visibility(
          visible: constraints.maxHeight >= 400,
          child: Align(
            alignment: Alignment.center,
            child: Container(
              width: 500,
              height: 500,
              child: Align(
                alignment: Alignment.center,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Observer(builder: (_) {
                      return Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: Color(0xff26006e),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.5),
                              spreadRadius: 1,
                              blurRadius: 3,
                              offset: Offset(0, 3),
                            )
                          ],
                        ),
                        height: 150,
                        width: 150,
                        child: Image.asset(
                            jokenPoController.resultImageWithOutBackGround),
                      );
                    }),
                    SizedBox(
                      height: 50,
                    ),
                    Observer(builder: (_) {
                      return Text(
                        jokenPoController.titleResult,
                        style: TextStyle(fontSize: 40),
                      );
                    }),
                    SizedBox(
                      height: 50,
                    ),
                    Observer(
                      builder: (_) {
                        return Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: Color(0xff26006e),
                                borderRadius: BorderRadius.circular(100),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.5),
                                    spreadRadius: 1,
                                    blurRadius: 3,
                                    offset: Offset(0, 3),
                                  )
                                ],
                              ),
                              width: 100,
                              height: 100,
                              child: InkWell(
                                borderRadius: BorderRadius.circular(100),
                                onTap: jokenPoController.generateStone,
                                child: Image.asset(pedra1),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                color: Color(0xff26006e),
                                borderRadius: BorderRadius.circular(100),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.5),
                                    spreadRadius: 1,
                                    blurRadius: 3,
                                    offset: Offset(0, 3),
                                  )
                                ],
                              ),
                              width: 100,
                              height: 100,
                              child: InkWell(
                                  borderRadius: BorderRadius.circular(100),
                                  onTap: jokenPoController.generatePaper,
                                  child: Image.asset(papel1)),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                color: Color(0xff26006e),
                                borderRadius: BorderRadius.circular(100),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.5),
                                    spreadRadius: 1,
                                    blurRadius: 3,
                                    offset: Offset(0, 3),
                                  )
                                ],
                              ),
                              width: 100,
                              height: 100,
                              child: InkWell(
                                borderRadius: BorderRadius.circular(100),
                                onTap: jokenPoController.generateScizors,
                                child: Image.asset(tesoura1),
                              ),
                            ),
                          ],
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
          replacement: Observer(
            builder: (_) {
              return Visibility(
                visible: constraints.maxHeight <= 399,
                child: Align(
                  alignment: Alignment.center,
                  child: SingleChildScrollView(
                    child: Container(
                      width: constraints.maxWidth * 0.5,
                      height: 283,
                      child: Align(
                        alignment: Alignment.center,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                                decoration: BoxDecoration(
                                  color: Color(0xff26006e),
                                  borderRadius: BorderRadius.circular(100),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black.withOpacity(0.5),
                                      spreadRadius: 1,
                                      blurRadius: 3,
                                      offset: Offset(0, 3),
                                    )
                                  ],
                                ),
                                height: 75,
                                width: 75,
                                child: Image.asset(jokenPoController
                                    .resultImageWithOutBackGround)),
                            SizedBox(
                              height: 50,
                            ),
                            Text(
                              jokenPoController.titleResult,
                              style: TextStyle(fontSize: 20),
                            ),
                            SizedBox(
                              height: 50,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Container(
                                    decoration: BoxDecoration(
                                      color: Color(0xff26006e),
                                      borderRadius: BorderRadius.circular(100),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.black.withOpacity(0.5),
                                          spreadRadius: 1,
                                          blurRadius: 3,
                                          offset: Offset(0, 3),
                                        )
                                      ],
                                    ),
                                    height: 50,
                                    width: 50,
                                    child: InkWell(
                                      borderRadius: BorderRadius.circular(100),
                                      onTap: jokenPoController.generateStone,
                                      child: Image.asset(pedra1),
                                    )),
                                Container(
                                  decoration: BoxDecoration(
                                    color: Color(0xff26006e),
                                    borderRadius: BorderRadius.circular(100),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black.withOpacity(0.5),
                                        spreadRadius: 1,
                                        blurRadius: 3,
                                        offset: Offset(0, 3),
                                      )
                                    ],
                                  ),
                                  height: 50,
                                  width: 50,
                                  child: InkWell(
                                    borderRadius: BorderRadius.circular(100),
                                    onTap: jokenPoController.generatePaper,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(100),
                                      child: Image.asset(papel),
                                    ),
                                  ),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    color: Color(0xff26006e),
                                    borderRadius: BorderRadius.circular(100),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black.withOpacity(0.5),
                                        spreadRadius: 1,
                                        blurRadius: 3,
                                        offset: Offset(0, 3),
                                      )
                                    ],
                                  ),
                                  height: 50,
                                  width: 50,
                                  child: InkWell(
                                    borderRadius: BorderRadius.circular(100),
                                    onTap: jokenPoController.generateScizors,
                                    child: Image.asset(tesoura1)
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              );
            },
          ));
    });
  }
}
