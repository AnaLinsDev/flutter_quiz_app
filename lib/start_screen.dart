import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  StartScreen(this.startQuiz, {Key key}) : super(key: key);

  void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 300,
            color: const Color.fromARGB(150, 255, 255, 255),
          ),

          // Opacity(
          //     opacity: 0.1,
          //     child: Image.asset(
          //       'assets/images/quiz-logo.png',
          //       width: 300,
          //     )),

          const SizedBox(height: 80),
          Text(
            "Learn Flutter the fun way !",
            style: TextStyle(color: Colors.white, fontSize: 24),
          ),
          const SizedBox(height: 30),
          OutlineButton.icon(
              onPressed: startQuiz,
              icon: Icon(
                Icons.arrow_right_alt,
                color: Colors.white,
              ),
              label: const Text("Start Quiz",
                  style: TextStyle(color: Colors.white)))
        ],
      ),
    );
  }
}
