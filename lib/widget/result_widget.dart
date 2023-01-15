import 'package:flutter/material.dart';

class ResultWidget extends StatelessWidget {
   
  const ResultWidget({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    final resultTitle = Text("0.0%",style: Theme.of(context).textTheme.titleLarge,);
    final resultImg = Container(
      margin: const EdgeInsets.symmetric(vertical: 20.0),
      width: 125.0,
      height: 125.0,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/bmi.png"),
          fit: BoxFit.cover
        )
      ),
    );

    final resultSubTitle = Text(
      "Your weight is good?",
      style: Theme.of(context).textTheme.titleSmall,
    );

    final resultText = Text(
      "You would like to know if you have the correct weight.",
      style: Theme.of(context).textTheme.bodyMedium,
      textAlign: TextAlign.center,
      );
      
    return Column(
      children: [
        resultTitle,
        resultImg,
        resultSubTitle,
        resultText
      ],
    );
  }
}