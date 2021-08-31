import 'package:flutter/material.dart';
import 'package:jokepo/break_points/emotions.dart';
import 'package:jokepo/break_points/images.dart';

class JokePoPortrait extends StatefulWidget {
  @override
  _JokePoPortraitState createState() => _JokePoPortraitState();
}

class _JokePoPortraitState extends State<JokePoPortrait> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Align(
        alignment: Alignment.center,
        child: Visibility(
          visible: constraints.maxWidth <= 500,
          child: Container(
            //color: Colors.yellow,
            width: double.infinity,
            height: constraints.maxHeight * 0.8,
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.all(16),
                  child: Container(
                    width: constraints.maxWidth * 0.3,
                    height: constraints.maxHeight * 0.180,
                    // color: Colors.blue,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(100),
                      child: Image.asset(question),
                    ),
                  ),
                ),
                SizedBox(
                  height: constraints.maxWidth * 0.2,
                ),
                Text(
                  'VOCÊ GANHOuu ${win}',
                  style: TextStyle(fontSize: (30)),
                ),
                SizedBox(
                  height: constraints.maxWidth * 0.2,
                ),
                Padding(
                  padding:
                      EdgeInsets.fromLTRB(constraints.maxWidth * 0.08, 0, 0, 0),
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(5),
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              boxShadow: [
                                BoxShadow(
                                    spreadRadius: 1,
                                    blurRadius: 3,
                                    offset: Offset(0, 3),
                                    color: Colors.black.withOpacity(0.5))
                              ]),
                          //color: Colors.blue,
                          width: constraints.maxWidth * 0.25,
                          height: constraints.maxHeight * 0.15,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(100),
                            child: Image.asset(pedra),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(5),
                        child: Container(
                          decoration: BoxDecoration(
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
                          width: constraints.maxWidth * 0.25,
                          height: constraints.maxHeight * 0.15,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(100),
                            child: Image.asset(papel),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(5),
                        child: Container(
                          decoration: BoxDecoration(
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
                          width: constraints.maxWidth * 0.25,
                          height: constraints.maxHeight * 0.15,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(100),
                            child: Image.asset(tesoura),
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          replacement: Align(
            alignment: Alignment.center,
            child: Container(
              width: constraints.maxWidth * 1,
              height: constraints.maxHeight * 0.8,
              color: Colors.yellow,
              
            ),
          ),
        ),
      );
    });
  }
}