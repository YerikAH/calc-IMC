import 'package:app_calc_imc/class/order_text.dart';
import 'package:app_calc_imc/helper/operation.dart';
import 'package:app_calc_imc/widget/widgets.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
   
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final OrderText results = OrderText();
  final Operation operation = Operation();

  double weightTotal = 100.0;
  double heightTotal = 1.75;
  double percent = 0.0;
  int selectNumber = 0;

  void calcIbm(){
    
    percent = operation.calcIbmOperation(weightTotal, heightTotal);
    selectNumber = operation.numberSwitch(percent);
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
            
            ResultWidget(
              imagePath: results.getResult(selectNumber).pahtImage, 
              title: results.getResult(selectNumber).selectTitle, 
              percent: percent.toStringAsFixed(1),
              text: results.getResult(selectNumber).selectText,
              color: results.getResult(selectNumber).selectColor,
            ),

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