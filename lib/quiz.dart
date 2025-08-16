import 'package:flutter/material.dart';
import 'package:quiz_app/questions.dart';
import 'package:quiz_app/result_screen.dart';

import 'HomePage.dart';
import 'data/QuestionsList.dart';

class Quiz extends StatefulWidget{
  const Quiz({super.key});
  @override
  State<Quiz> createState() {
    return _QuizWidget();
  }

}

class _QuizWidget extends State<Quiz>{

  List<String> SelectedAnswers = [];
  Widget? active_state ;

  @override
  void initState() {

    active_state = HomePage(change_state);
    super.initState();

  }

  void chooseAns(String ans){
    SelectedAnswers.add(ans);

    if(SelectedAnswers.length == QuestionsList.length){
      setState(() {
        SelectedAnswers = [];
        active_state = ResultScreen(chosenAnswers: SelectedAnswers);
      });
    }
  }
  void change_state(){
    setState(() {
      active_state = Questions(onSelectAnswer: chooseAns);
    });
  }

  Widget build(context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
            decoration: BoxDecoration(gradient: LinearGradient(
              colors: [Colors.blue,Colors.deepPurpleAccent,Colors.deepPurple],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            )
            ),
            child: active_state
        ),
      ),);
  }
}