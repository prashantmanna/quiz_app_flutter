import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final void Function() startQuiz;

  HomePage(this.startQuiz, {super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            "asset/images/quiz-logo.png",
            width: 300,
            color: Color.fromARGB(150, 255, 255, 255),
          ),
          SizedBox(height: 40),
          Text(
            "Welcome To Quizmania",
            style: TextStyle(
              color: Colors.white,
              fontSize: 25,
              fontStyle: FontStyle.italic,
            ),
          ),
          SizedBox(height: 30),
          OutlinedButton.icon(
            icon: Icon(Icons.arrow_right_alt),
            onPressed: startQuiz,
            style: OutlinedButton.styleFrom(foregroundColor: Colors.white),
            label: Text("Start Quiz"),
          ),
        ],
      ),
    );
  }
}
