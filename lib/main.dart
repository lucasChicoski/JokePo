import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:jokepo/controllers/jokenpo_controller.dart';

import 'screen/jokepo_screen.dart';

main() {
  instaces();
  runApp(AppMain());
}

void instaces() {
  GetIt.I.registerSingleton<JokenPoController>(JokenPoController());
}

var getIt = GetIt.I;

class AppMain extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "JokePo",
      home: Scaffold(
        appBar: AppBar(),
        body: JokePo(),
      ),
    );
  }
}
