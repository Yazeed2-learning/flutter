import 'package:flutter/material.dart';


import './Question.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}
class _MyAppState extends State<MyApp>{  // the underscore is to make the state private :)) 
  var questionIndex = 0; 

  var questions = ['what\'s your favorite car', 'what\'s your favorite food'];
  void _answerQuestion (int index) { 
    setState(() {
      if(questions.length <= questionIndex +1  ){ 
        questionIndex -= 1;
      }else{ 
        questionIndex++;

      }
    });
    print(questionIndex);
      print('question answered! $index' );
  }
  @override
  Widget build(BuildContext context) {
  
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My first app '),
        ),
        body: Column(children: [
          Question(questions[questionIndex],),
          Row(children: [ ElevatedButton(
            child: Text('Answer 1'),
            onPressed: ()=>_answerQuestion(1),
          ),
          ElevatedButton(
            child: Text('Answer 2'),
            onPressed: ()=>_answerQuestion(2),
          ),
          ElevatedButton(
            child: Text('Answer 3'),
            onPressed: ()=>_answerQuestion(3),
          ),]
          ),
        
        ]),
      ),
    );
  }
}
