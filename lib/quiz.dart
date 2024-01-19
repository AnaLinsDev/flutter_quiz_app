import 'package:flutter/material.dart';

import 'package:quiz_app/questions_screen.dart';
import 'package:quiz_app/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({Key key}) : super(key: key);

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  Widget activeScreen;

  void initState() {
    activeScreen = StartScreen(switchScreen);
    super.initState();
  }

  /*

    3  important (stateful) widget lifecycle methods:

    initState(): Executed when the StatefulWidget's State object is initialized

    build(): Executed when the Widget is built for the first time AND after setState() was called

    dispose(): Executed right before the Widget will be deleted

  */

  switchScreen() {
    setState(() {
      activeScreen = const QuestionsScreen();
    });
  }

  @override
  Widget build(context) {
    return MaterialApp(
      title: 'Quiz App',
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  colors: [Colors.deepPurple, Colors.deepPurpleAccent])),
          child: activeScreen,
        ),
      ),
    );
  }
}
