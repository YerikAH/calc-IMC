import 'package:flutter/material.dart';

class ButtonopWidget extends StatelessWidget {
   
  const ButtonopWidget({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: (){}, 
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text("Calculate",style: Theme.of(context).textTheme.headlineSmall),
      )
    );
  }
}