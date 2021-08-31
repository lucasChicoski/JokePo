import 'package:flutter/material.dart';

import 'screen/jokepo_screen.dart';

main() {
  runApp(AppMain());
}

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
