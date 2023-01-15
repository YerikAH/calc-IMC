import 'package:app_calc_imc/theme/theme_app.dart';
import 'package:flutter/material.dart';

class HeightWidget extends StatefulWidget {
   
  const HeightWidget({Key? key}) : super(key: key);

  @override
  State<HeightWidget> createState() => _HeightWidgetState();
}

class _HeightWidgetState extends State<HeightWidget> {
  double max = 2.5;
  double min = 0.1;
  double currentValue= 1.75;
  @override
  Widget build(BuildContext context) {
    final titleBox = Text("Height (m)", style: Theme.of(context).textTheme.headlineMedium,);
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
      }
    );
    final sliderDecoration = Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        IconButton(
          style: IconButton.styleFrom(
            foregroundColor: ThemeApp.white,
            backgroundColor: ThemeApp.blue,
          ),
          onPressed: (){
            setState(() {
              currentValue = currentValue - 0.01;       
            });
          }, 
          icon: const Icon(Icons.remove)
        ),
        sliderBox,
        IconButton(
          icon: const Icon(Icons.add,),
          style: IconButton.styleFrom(
          foregroundColor: ThemeApp.white,
          backgroundColor: ThemeApp.blue,
          ),
          // disabledBackgroundColor: colors.onSurface.withOpacity(0.12),
          // hoverColor: colors.onPrimary.withOpacity(0.08),
          // focusColor: colors.onPrimary.withOpacity(0.12),
          // highlightColor: colors.onPrimary.withOpacity(0.12),
          onPressed: (){
            setState(() {
              currentValue = currentValue + 0.01;       
            });
          }, 
        )
      ],
    );
    return Container(

      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25.0),
        color: ThemeApp.grayPale,
      ),
      child: Column(
        children: [
          titleBox,
          numberBox,
          sliderDecoration

        ],
      ),
    );
  }
}