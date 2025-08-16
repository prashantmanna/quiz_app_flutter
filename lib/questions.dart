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

  var currQuestionIndex = 0;

  void answerQuestion(){
    currQuestionIndex++;
  }
  final curr_question = QuestionsList[0];
  Widget build(context) {
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          spacing: 10,
          children: [
            Text(curr_question.text, style: TextStyle(color: Colors.black, fontSize: 20,fontStyle: FontStyle.italic),textAlign: TextAlign.center,),
            SizedBox(height: 5),
            ...curr_question.Shuffled().map((item){
              return answer_btn(answerText: item, onTap: () {});
            }),
            //answer_btn(answerText: curr_question.Answer[0], onTap: () {}),
            //answer_btn(answerText: curr_question.Answer[1], onTap: () {}),
            //answer_btn(answerText: curr_question.Answer[2], onTap: () {}),
            //answer_btn(answerText: curr_question.Answer[3], onTap: () {}),
          ],
        ),
      ),
    );
  }
}
