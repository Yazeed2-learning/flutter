import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState();
  }
}
class MyAppState extends State<MyApp>{ 
  var questionIndex = 0; 

  void answerQuestion (int index) { 
    setState(() {
      
    questionIndex = questionIndex + 1 ;
    });
      print('question answered! $index' );
  }
  @override
  Widget build(BuildContext context) {
    var questions = ['what\'s your favorite car', 'what\'s your favorite food'];
  
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My first app '),
        ),
        body: Column(children: [
          Text(questions[questionIndex],),
          Row(children: [ ElevatedButton(
            child: Text('Answer 1'),
            onPressed: ()=>answerQuestion(1),
          ),
          ElevatedButton(
            child: Text('Answer 2'),
            onPressed: ()=>answerQuestion(2),
          ),
          ElevatedButton(
            child: Text('Answer 3'),
            onPressed: ()=>answerQuestion(3),
          ),]
          ),
        
        ]),
      ),
    );
  }
}
