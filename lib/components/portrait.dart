import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';
import 'package:jokepo/break_points/images.dart';
import 'package:jokepo/controllers/jokenpo_controller.dart';

class JokePoPortrait extends StatefulWidget {
  @override
  _JokePoPortraitState createState() => _JokePoPortraitState();
}

class _JokePoPortraitState extends State<JokePoPortrait> {
  JokenPoController jokenPoController = GetIt.I<JokenPoController>();
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth > 320 && constraints.maxWidth < 768) {
        return Align(
          alignment: Alignment.center,
          child: Container(
            // color: Colors.yellow,
            width: double.infinity,
            height: constraints.maxHeight * 0.8,
            child: Column(
              children: [
                Observer(builder: (_) {
                  return Padding(
                    padding: EdgeInsets.all(16),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Color(0xff26006e),
                          borderRadius: BorderRadius.circular(100),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black,
                              offset: Offset(0, 3),
                              blurRadius: 1,
                              spreadRadius: 1,
                            )
                          ]),
                      width: 100,
                      height: 100,
                      // color: Colors.blue,
                      child: Image.asset(
                          jokenPoController.resultImageWithOutBackGround),
                    ),
                  );
                }),
                SizedBox(
                  height: constraints.maxWidth * 0.1,
                ),
                Observer(builder: (_) {
                  return Text(
                    jokenPoController.titleResult,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: (25),
                    ),
                  );
                }),
                SizedBox(
                  height: constraints.maxWidth * 0.2,
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
                                spreadRadius: 1,
                                blurRadius: 3,
                                offset: Offset(0, 3),
                                color: Colors.black.withOpacity(0.5))
                          ]),
                      //color: Colors.blue,
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
                              blurRadius: 3,
                              spreadRadius: 1,
                              offset: Offset(0, 3),
                              color: Colors.black.withOpacity(0.5),
                            )
                          ]),
                      // color: Colors.blue,
                      width: 100,
                      height: 100,
                      child: InkWell(
                        onTap: jokenPoController.generatePaper,
                        borderRadius: BorderRadius.circular(100),
                        child: Image.asset(papel1),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Color(0xff26006e),
                        borderRadius: BorderRadius.circular(100),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 3,
                            spreadRadius: 1,
                            color: Colors.black.withOpacity(0.5),
                            offset: Offset(0, 3),
                          )
                        ],
                      ),
                      //   color: Colors.blue,
                      width: 100,
                      height: 100,
                      child: InkWell(
                        borderRadius: BorderRadius.circular(100),
                        onTap: jokenPoController.generateScizors,
                        child: Image.asset(tesoura1),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      } else if (constraints.maxWidth <= 320) {
        return Center(
          child: Container(
            width: double.infinity,
            height: constraints.maxHeight * 0.8,
            child: Column(
              children: [
                Center(
                  child: Padding(
                      padding: EdgeInsets.fromLTRB(0, 15, 0, 0),
                      //Container Principal
                      child: Observer(builder: (_) {
                        return Container(
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.5),
                                offset: Offset(0, 3),
                              )
                            ],
                            borderRadius: BorderRadius.circular(100),
                            color: Color(0xff26006e),
                          ),
                          child: Image.asset(
                              jokenPoController.resultImageWithOutBackGround),
                        );
                      })),
                ),
                Observer(builder: (_) {
                  return Padding(
                    padding: EdgeInsets.fromLTRB(0, constraints.maxHeight * 0.1,
                        0, constraints.maxHeight * 0.1),
                    child: Text(
                      jokenPoController.titleResult,
                    ),
                  );
                }),
                Observer(builder: (_) {
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        width: 80,
                        height: 80,
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.5),
                              offset: Offset(0, 3),
                            )
                          ],
                          borderRadius: BorderRadius.circular(100),
                          color: Color(0xff26006e),
                        ),
                        child: InkWell(
                          onTap: jokenPoController.generateStone,
                          borderRadius: BorderRadius.circular(100),
                          child: Image.asset(pedra1),
                        ),
                      ),
                      Container(
                        width: 80,
                        height: 80,
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.5),
                              offset: Offset(0, 3),
                            )
                          ],
                          borderRadius: BorderRadius.circular(100),
                          color: Color(0xff26006e),
                        ),
                        child: InkWell(
                          borderRadius: BorderRadius.circular(100),
                          onTap: jokenPoController.generatePaper,
                          child: Image.asset(papel1),
                        ),
                      ),
                      Container(
                        width: 80,
                        height: 80,
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.5),
                              offset: Offset(0, 3),
                            )
                          ],
                          borderRadius: BorderRadius.circular(100),
                          color: Color(0xff26006e),
                        ),
                        child: InkWell(
                          borderRadius: BorderRadius.circular(100),
                          onTap: jokenPoController.generateScizors,
                          child: Image.asset(tesoura1),
                        ),
                      ),
                    ],
                  );
                }),
              ],
            ),
          ),
        );
      } else {
        return Align(
          alignment: Alignment.center,
          child: Container(
            width: constraints.maxWidth * 1,
            height: constraints.maxHeight * 0.8,
            // color: Colors.yellow,
            child: Column(
              children: [
                Padding(
                    padding: EdgeInsets.fromLTRB(
                        0, 100, 0, constraints.maxHeight * 0.09),
                    child: Observer(
                      builder: (_) {
                        return Container(
                            width: constraints.maxWidth * 0.3,
                            height: constraints.maxHeight * 0.25,
                            // color: Colors.red,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(300),
                                color: Color(0xff26006e),
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.black.withOpacity(0.5),
                                      offset: Offset(0, 3),
                                      blurRadius: 1,
                                      spreadRadius: 3)
                                ]),
                            child: Image.asset(jokenPoController
                                .resultImageWithOutBackGround));
                      },
                    )),
                Observer(builder: (_) {
                  return Padding(
                    padding: EdgeInsets.fromLTRB(0, 0, 0, 50),
                    child: Text(
                      jokenPoController.titleResult,
                      style: TextStyle(fontSize: 40),
                    ),
                  );
                }),
                Observer(
                  builder: (_) {
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              color: Color(0xff26006e),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.black.withOpacity(0.5),
                                    offset: Offset(0, 3),
                                    blurRadius: 1,
                                    spreadRadius: 3)
                              ]),
                          child: InkWell(
                            borderRadius: BorderRadius.circular(100),
                            onTap: jokenPoController.generateStone,
                            child: Image.asset(pedra1),
                          ),
                          width: constraints.maxWidth * 0.2,
                          height: constraints.maxHeight * 0.15,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              color: Color(0xff26006e),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.black.withOpacity(0.5),
                                    offset: Offset(0, 3),
                                    blurRadius: 1,
                                    spreadRadius: 3)
                              ]),
                          child: InkWell(
                            borderRadius: BorderRadius.circular(100),
                            onTap: jokenPoController.generatePaper,
                            child: Image.asset(papel1),
                          ),
                          width: constraints.maxWidth * 0.2,
                          height: constraints.maxHeight * 0.15,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              color: Color(0xff26006e),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.black.withOpacity(0.5),
                                    offset: Offset(0, 3),
                                    blurRadius: 1,
                                    spreadRadius: 3)
                              ]),
                          child: InkWell(
                            borderRadius: BorderRadius.circular(100),
                            onTap: jokenPoController.generateScizors,
                            child: Image.asset(tesoura1),
                          ),
                          width: constraints.maxWidth * 0.2,
                          height: constraints.maxHeight * 0.15,
                        ),
                      ],
                    );
                  },
                )
              ],
            ),
          ),
        );
      }
    });
  }
}
