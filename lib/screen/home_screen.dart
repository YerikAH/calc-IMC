import 'package:app_calc_imc/widget/widgets.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
   
  const HomeScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI Calculator",style: Theme.of(context).textTheme.titleMedium,),
        automaticallyImplyLeading: false,
        actions: [
          IconButton(onPressed: (){
            Navigator.pushNamed(context, 'info');
          }, icon: const Icon(Icons.info_outline_rounded),)
        ],
      ),
      body: Container(
        margin: const EdgeInsets.only(right: 20.0,bottom: 30.0,left: 20.0),
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