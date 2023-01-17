import 'package:app_calc_imc/widget/widgets.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
   
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double weightTotal = 100.0;
  double heightTotal = 1.75;

  void calcIbm(){
    double result = weightTotal / (heightTotal * heightTotal);
  }

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
          children: [
            const ResultWidget(),
            const SizedBox(height:30.0),
            HeightWidget(
              onChange: (value) {
                setState(() {
                  heightTotal = value;
                });
              },
            ),
            const SizedBox(height:15.0),
            WeightWidget(onChange: ((value) {
              setState(() {
                weightTotal = value;
              });
            }),),
            const SizedBox(height:30.0),
            const ButtonopWidget()
          ],
        ),
      )
    );
  }
}