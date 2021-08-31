import 'package:flutter/material.dart';
import 'package:jokepo/components/landscape.dart';
import 'package:jokepo/components/portrait.dart';

class JokePo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(builder: (context, orientation) {
      return Visibility(
        visible: orientation == Orientation.portrait,
        child: JokePoPortrait(),
        replacement: JokePoLandScape(),
      );
    });
  }
}
