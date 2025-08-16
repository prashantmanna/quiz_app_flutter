import 'package:flutter/material.dart';
import 'package:quiz_app/data/QuestionsList.dart';

class ResultScreen extends StatelessWidget {
  ResultScreen({super.key, required this.chosenAnswers});

  List<Map<String, Object>> getData() {
    final List<Map<String, Object>> summary = [];
    for (var i = 0; i < chosenAnswers.length; i++) {
      summary.add({
        "question_index": i,
        "question": QuestionsList[i].text,
        "correct_answer": QuestionsList[i].Answer[0],
        "user_Answer": chosenAnswers[i],
      });
    }
    return summary;
  }

  List<String> chosenAnswers;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("You answered x out of 6 questions correctly!"),
            SizedBox(height: 20),
            Text("List of answers and questions"),
            SizedBox(height: 20),
            TextButton(
              onPressed: () {},
              child: Text(
                "Restart Quiz",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
