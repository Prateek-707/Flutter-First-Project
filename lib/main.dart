import 'package:flutter/material.dart';

import './result.dart';
import './Quiz.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {

  int _questionIndex = 0 ;
  int _scoreSum = 0;

  var _question = [
      {
        'questionText': 'What\'s your favorite color?',
        'answers': [{'Text':'Black','Score':5},
        {'Text':'Red','Score':3},
        {'Text':'Yellow','Score':4},
        {'Text':'Orange','Score':9}
        ],
      },
      {
        'questionText': 'What\'s your favorite animal?',
        'answers': [{'Text':'Rabbit','Score':5},
        {'Text':'Lion','Score':7},
        {'Text':'Tiger','Score':9},
        {'Text':'Elephant','Score':10}
        ],
      },  
      ];

  void _chooseOption(Score){
    setState(() {
        _questionIndex += 1;

        _scoreSum = _scoreSum + Score;
    });
    print('Option Choosen!!');
  }

  void _resetApp(){
    setState(() {
      _questionIndex = 0 ;
      _scoreSum = 0;
    });
  }

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('My First App')),
        body: _questionIndex < _question.length ? 
              Quiz(question: _question, chooseOption: _chooseOption, questionIndex: _questionIndex)
              :Result(_scoreSum,_resetApp),
      ),
    );
  }
}
