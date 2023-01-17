import 'package:flutter/material.dart';

class ResultWidget extends StatelessWidget {
  final String imagePath;
  final String title;
  final String text;
  final String percent;
  final Color color;
  const ResultWidget({Key? key, required this.imagePath, required this.title, required this.text, required this.percent, required this.color}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    final resultTitle = Text("$percent%",style: TextStyle(        
        fontFamily: "Poppins",
        color: color,
        fontSize: 32.0,
        fontWeight: FontWeight.w700),
      );
    final resultImg = Container(
      margin: const EdgeInsets.symmetric(vertical: 20.0),
      width: 125.0,
      height: 125.0,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(imagePath),
          fit: BoxFit.cover
        )
      ),
    );

    final resultSubTitle = Text(
      title,
      style: Theme.of(context).textTheme.titleSmall,
    );

    final resultText = Text(
      text,
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