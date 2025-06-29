import 'package:flutter/material.dart';
import 'package:quiz_app/questions_screen.dart';
import 'package:quiz_app/start_screen.dart';

class Quiz extends StatefulWidget{
const Quiz({super.key});
@override
State<Quiz>createState() {
  
  return _QuizState();
}
}

class _QuizState extends State<Quiz> {

  Widget? activeScreen;

@override
  void initState() {
    activeScreen = StartScreen(switchScreen);
    super.initState();
  }

  switchScreen(){

    setState(()
    {
      activeScreen = const QuestionsScreen();
    });

  }

@override
Widget build(context){
  return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration:const BoxDecoration(gradient: LinearGradient(
          colors: [
             Color.fromARGB(255, 85, 52, 143),
            Color.fromARGB(255, 52, 4, 116),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          ),
  ),
          child: activeScreen),   
  ),
  );
}

}