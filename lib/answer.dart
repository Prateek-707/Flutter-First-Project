import 'package:flutter/material.dart';

class Answer extends StatelessWidget {

  final Function SelectHandler;
  String answerText;

  Answer(this.SelectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {

    return Container(
      width: double.infinity,
      child: ElevatedButton(
            onPressed: SelectHandler,
            child: Text(answerText)
          ),
    );
    
  }
}