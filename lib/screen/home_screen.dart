import 'package:app_calc_imc/theme/theme_app.dart';

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
      body: ListView(
        children: const [
          ResultWidget(),
          HeightWidget()
        ],
      )
    );
  }
}