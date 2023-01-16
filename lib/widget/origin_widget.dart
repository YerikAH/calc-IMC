import 'package:app_calc_imc/constant/constant.dart';
import 'package:flutter/material.dart';

class OriginWidget extends StatelessWidget {
   
  const OriginWidget({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(text: 'source: ',style: Theme.of(context).textTheme.titleMedium,),
          TextSpan(text: ConstantInfo.originLink,style: Theme.of(context).textTheme.bodyMedium)

        ]
      ),
    );
      
    
  }
}