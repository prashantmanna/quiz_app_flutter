import 'package:flutter/material.dart';
import 'package:quiz_app/questions.dart';

import 'HomePage.dart';

class Quiz extends StatefulWidget{
  const Quiz({super.key});
  @override
  State<Quiz> createState() {
    return _QuizWidget();
  }

}

class _QuizWidget extends State<Quiz>{
  Widget? active_state ;

  @override
  void initState() {

    active_state = HomePage(change_state);
    super.initState();

  }
  void change_state(){
    setState(() {
      active_state = Questions();
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