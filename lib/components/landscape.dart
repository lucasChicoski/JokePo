import 'package:flutter/material.dart';
import 'package:jokepo/break_points/emotions.dart';
import 'package:jokepo/break_points/images.dart';

class JokePoLandScape extends StatefulWidget {
  @override
  _JokePoLandScapeState createState() => _JokePoLandScapeState();
}

class _JokePoLandScapeState extends State<JokePoLandScape> {
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
            // color: Colors.yellow,
            child: Align(
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
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
                    // color: Colors.red,
                    height: 150,
                    width: 150,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(100),
                      child: Image.asset(question),
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Text(
                    "VOCÊ GANHOU ${loose}",
                    style: TextStyle(fontSize: 40),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        decoration: BoxDecoration(
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
                          onTap: () {},
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(100),
                            child: Image.asset(pedra),
                          ),
                        ),
                      ),
                      Container(
                        // color: Colors.grey,
                        decoration: BoxDecoration(
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
                          onTap: () {},
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(100),
                            child: Image.asset(papel),
                          ),
                        ),
                      ),
                      Container(
                        //color: Colors.green,
                        decoration: BoxDecoration(
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
                          onTap: () {},
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(100),
                            child: Image.asset(tesoura),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        replacement: Visibility(
          visible: constraints.maxHeight <= 399,
          child: Align(
            alignment: Alignment.center,
            child: SingleChildScrollView(
              child: Container(
                width: constraints.maxWidth * 0.5,
                height: 283,
                //color: Colors.yellow,
                child: Align(
                  alignment: Alignment.center,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                          // color: Colors.red,
                          decoration: BoxDecoration(
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
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(100),
                            child: Image.asset(question),
                          )),
                      SizedBox(
                        height: 50,
                      ),
                      Text(
                        "VOCÊ GANHOU 😅",
                        style: TextStyle(fontSize: 20),
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(

                              //   color: Colors.blue,
                              decoration: BoxDecoration(
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
                                onTap: () {},
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(100),
                                  child: Image.asset(pedra),
                                ),
                              )),
                          Container(
                            //   color: Colors.grey,
                            decoration: BoxDecoration(
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
                              onTap: () {},
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(100),
                                child: Image.asset(papel),
                              ),
                            ),
                          ),
                          Container(
                            //   color: Colors.green,
                            decoration: BoxDecoration(
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
                              onTap: () {},
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(100),
                                child: Image.asset(tesoura),
                              ),
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
        ),
      );
    });
  }
}
