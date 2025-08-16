import 'package:flutter/material.dart';
import 'package:quiz_app/answer_btn.dart';
import 'data/QuestionsList.dart';

class Questions extends StatefulWidget {
  const Questions({super.key});

  @override
  State<Questions> createState() {
    return _QuestionsWidget();
  }
}

class _QuestionsWidget extends State<Questions> {

  final curr_question = QuestionsList[0];
  Widget build(context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(curr_question.text, style: TextStyle(color: Colors.white)),
          SizedBox(height: 20),
          ...curr_question.Answer.map((item){
            return answer_btn(answerText: item, onTap: () {});
          }),
          //answer_btn(answerText: curr_question.Answer[0], onTap: () {}),
          //answer_btn(answerText: curr_question.Answer[1], onTap: () {}),
          //answer_btn(answerText: curr_question.Answer[2], onTap: () {}),
          //answer_btn(answerText: curr_question.Answer[3], onTap: () {}),
        ],
      ),
    );
  }
}
