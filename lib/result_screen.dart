import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/HomePage.dart';
import 'package:quiz_app/data/QuestionsList.dart';
import 'package:quiz_app/questions_summary.dart';
import 'package:quiz_app/questions_summary.dart';
import 'package:quiz_app/quiz.dart';

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
  Widget build(BuildContext context){
    final summaryData = getData();
    final totalQuestion = QuestionsList.length;
    final correctQuestion = summaryData.where((data) {
      return data["user_Answer"] == data["correct_answer"];
    }).length;

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("You answered  $correctQuestion out of $totalQuestion questions correctly! " ,
            style: GoogleFonts.poppins(
              color: Colors.white,
              fontSize: 15,
              fontWeight: FontWeight.bold
            ),),
            SizedBox(height: 20),
            QuestionSummary(summaryData),
            SizedBox(height: 20),
            TextButton(
              onPressed: () {
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                    builder: (ctx) => Quiz(),
                  ),
                );
              },
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
