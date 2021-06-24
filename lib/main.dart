import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var questions = ['what\'s your favorite car', 'what\'s your favorite food'];
    void answerQuestion (int index) { 
        print('question answered! $index' );
    }
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My first app '),
        ),
        body: Column(children: [
          Text('The question'),
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
