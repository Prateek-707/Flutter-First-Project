import 'package:flutter/material.dart';

class Result extends StatelessWidget {

  final int resultScore;
  final Function resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get prasePrompt
  {
    String PraseText = 'You did it!' ;

    if(resultScore <=8 )
    {
        PraseText = 'You are Awesome!!';
    }
    else if(resultScore <=16)
    {
      PraseText = 'Not too bad!';
    }
    else if(resultScore <=24)
    {
      PraseText = 'Need some improvement!';
    }
    else
    {
      PraseText = 'Very Bad';
    }

    return PraseText;
    
  } 

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            prasePrompt,
            style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 36,
            ),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            onPressed: resetHandler, 
            child: Text(
              'Restart Quiz!',
              style: TextStyle(fontSize: 20),
              ),
            textColor: Colors.blue,
            
            
          
            )
        ],

      ),

      
      );
  }
}