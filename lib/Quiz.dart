import 'package:flutter/material.dart';
import './answer.dart';
import './question.dart';

class Quiz extends StatelessWidget {
  
  final List<Map<String, Object>> question;
  final Function chooseOption;
  final int questionIndex;

  Quiz({
    @required this.question,
    @required this.chooseOption,
    @required this.questionIndex});

  @override
  Widget build(BuildContext context) {

    return Column(
          children: [
              Question(
                question[questionIndex]['questionText'],
              ),
              
              ...(question[questionIndex]['answers'] as List<Map<String,Object>>).map((answer) {
                return Answer(() => chooseOption(answer['Score']),answer['Text']);
              }).toList() 
        ]
    );
  }
}