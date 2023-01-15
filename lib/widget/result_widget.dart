import 'package:flutter/material.dart';

class ResultWidget extends StatelessWidget {
   
  const ResultWidget({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    final resultTitle = Text("0.0%");
    final resultImg = Container(
      width: 125.0,
      height: 125.0,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(""),
          fit: BoxFit.cover
        )
      ),
    );
    final resultSubTitle = Text("Your weight is good?");
    final resultText = Text("You would like to know if you have the correct weight.");
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