import 'package:app_calc_imc/theme/theme_app.dart';
import 'package:flutter/material.dart';

class WeightWidget extends StatefulWidget {
  const WeightWidget({Key? key, required this.onChange}) : super(key: key);

    final ValueChanged<double> onChange;
  @override
  State<WeightWidget> createState() => _WeightWidgetState();
}

class _WeightWidgetState extends State<WeightWidget> {



  double max = 150;
  double currentValue = 100.0;
  double min = 10;

  @override
  Widget build(BuildContext context) {
    final titleBox = Text("Weight (kg)", style: Theme.of(context).textTheme.headlineMedium,);
    final numberBox = Text(currentValue.toStringAsFixed(2),style: Theme.of(context).textTheme.headlineLarge,);
    final sliderBox = Slider.adaptive(
      value: currentValue, 
      min: min,
      max: max,
      activeColor: ThemeApp.blue,
      onChanged: (value){
        setState(() {
          currentValue = value;
        });
        widget.onChange(value);
      }
    );
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25.0),
        color: ThemeApp.grayPale,
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 15.0,right: 20.0, left: 20.0),
        child: Column(
          children: [
            titleBox,
            numberBox,
            sliderBox
          ],
        ),
      ),
    );
  }
}