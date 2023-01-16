import 'package:flutter/material.dart';

class ErrorScreen extends StatelessWidget {
   
  const ErrorScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI Calculator",style: Theme.of(context).textTheme.titleMedium,),
        automaticallyImplyLeading: false,
        actions: [
          IconButton(onPressed: (){
            Navigator.pushNamed(context, 'home');
          }, icon: const Icon(Icons.exit_to_app_rounded),)
        ],
      ),
      body: Center(
         child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
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
            const SizedBox(height: 15.0,),
            Text("ERROR 404",style: Theme.of(context).textTheme.titleSmall,),
            Text("Sorry an error occurred",style: Theme.of(context).textTheme.bodyMedium,)
          ],
         )
      ),
    );
  }
}