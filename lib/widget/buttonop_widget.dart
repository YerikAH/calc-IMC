import 'package:flutter/material.dart';

class ButtonopWidget extends StatelessWidget {
  final Function cacIbm;
  const ButtonopWidget({Key? key, required this.cacIbm}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: (){
        cacIbm();
      }, 
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text("Calculate",style: Theme.of(context).textTheme.headlineSmall),
      )
    );
  }
}