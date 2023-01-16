import 'package:app_calc_imc/widget/widgets.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
   
  const HomeScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI Calculator",style: Theme.of(context).textTheme.titleMedium,),

        actions: [
          IconButton(onPressed: (){}, icon: const Icon(Icons.info_outline_rounded),)
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(right: 20.0,bottom: 30.0,left: 20.0),
        child: ListView(
          children: const [
            ResultWidget(),
            SizedBox(height:30.0),
            HeightWidget(),
            SizedBox(height:15.0),
            WeightWidget(),
            SizedBox(height:30.0),
            ButtonopWidget()
          ],
        ),
      )
    );
  }
}