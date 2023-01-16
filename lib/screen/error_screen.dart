import 'package:flutter/material.dart';

class ErrorScreen extends StatelessWidget {
   
  const ErrorScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
         child: Column(
          children: [
            Container(
              width: 125.0,
              height: 125.0,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/error.png"),
                  fit: BoxFit.cover
                )
              ),
            ),
            const Text("ERROR 404"),
            const Text("Sorry an error occurred")
          ],
         )
      ),
    );
  }
}