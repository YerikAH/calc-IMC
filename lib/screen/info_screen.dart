import 'package:app_calc_imc/constant/constant.dart';
import 'package:app_calc_imc/widget/widgets.dart';
import 'package:flutter/material.dart';

class InfoScreen extends StatelessWidget {
   
  const InfoScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI Calculator",style: Theme.of(context).textTheme.titleMedium,),
        automaticallyImplyLeading: false,
        actions: [
          IconButton(onPressed: (){
            Navigator.pop(context);
          }, icon: const Icon(Icons.exit_to_app_rounded),)
        ],
      ),
      body:Container(
        margin:  const EdgeInsets.only(right: 20.0,bottom: 30.0,left: 20.0),
        child: ListView(
          children: [
            const SizedBox(height: 20.0),
            Text(ConstantInfo.firstText,style: Theme.of(context).textTheme.bodyMedium,),
            const SizedBox(height: 20.0,),
            Text(ConstantInfo.formulaText, textAlign: TextAlign.center, style: Theme.of(context).textTheme.titleMedium,),
            const SizedBox(height: 20.0,),
            Text(ConstantInfo.secondText,style: Theme.of(context).textTheme.bodyMedium,),
            const SizedBox(height: 20.0,),
            const TableWidget(),
            const SizedBox(height: 20.0,),
            const OriginWidget()
          ],
        ),
      )
    );
  }
}