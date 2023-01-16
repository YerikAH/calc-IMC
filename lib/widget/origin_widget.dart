import 'package:app_calc_imc/constant/constant.dart';
import 'package:flutter/material.dart';

class OriginWidget extends StatelessWidget {
   
  const OriginWidget({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text("source:",style: Theme.of(context).textTheme.titleMedium,),
        Text(ConstantInfo.originLink,style: Theme.of(context).textTheme.bodyMedium),
      ],
    );
  }
}