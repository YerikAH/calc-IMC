import 'package:app_calc_imc/theme/theme_app.dart';
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
  final imagePath = ["assets/bmi.png","assets/bad.png","assets/normal.png","assets/normal-bad.png","assets/bad-bad.png"];
  final titleSelect = ["Your weight is good?","Underweight","Normal","Top Weight","Obesity"];
  final textSelect = [
    "You would like to know if you have the correct weight.",
    "You need to eat more, and do a lot of physical exercise.",
    "You are at your ideal weight, stay that way.",
    "You need to watch your diet and exercise more.",
    "You must lose weight for your health."
  ];
  final colors = [ThemeApp.blue,ThemeApp.blue, ThemeApp.green, ThemeApp.red , ThemeApp.yellow];
  double percent = 0.0;
  int selectNumber = 0;

  void calcIbm(){
    double result = weightTotal / (heightTotal * heightTotal);
    if (result <= 18.5) {
      selectNumber = 1;
    }else if(result > 18.5 && result <= 24.9){
      selectNumber = 2;
    }else if(result >= 25.0 && result <= 29.9){
      selectNumber = 3;
    }else{
      selectNumber = 4;
    }
    percent = result;
    setState(() {
      
    });
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
            ResultWidget(imagePath: imagePath[selectNumber] , title: titleSelect[selectNumber] , percent: percent.toStringAsFixed(1) ,text: textSelect[selectNumber], color: colors[selectNumber],),
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
            ButtonopWidget(cacIbm: calcIbm,)
          ],
        ),
      )
    );
  }
}