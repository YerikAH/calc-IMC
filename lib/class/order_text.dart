import 'package:app_calc_imc/class/result_option.dart';
import 'package:app_calc_imc/theme/theme_app.dart';

class OrderText{
  final List<ResultOption> _result = [
    ResultOption(pahtImage: "assets/bmi.png", selectTitle: "Your weight is good?", selectText: "You would like to know if you have the correct weight.", selectColor: ThemeApp.blue),
    ResultOption(pahtImage: "assets/bad.png", selectTitle: "Underweight", selectText: "You need to eat more, and do a lot of physical exercise.", selectColor: ThemeApp.blue),
    ResultOption(pahtImage: "assets/normal.png", selectTitle: "Normal", selectText: "YOur are at your ideal weight, stay that way.", selectColor: ThemeApp.green),
    ResultOption(pahtImage: "assets/normal-bad.png", selectTitle: "Top Weight", selectText: "Your need to watch your diet and exercise more.", selectColor: ThemeApp.red),
    ResultOption(pahtImage: "assets/bad-bad.png", selectTitle: "Obesity", selectText: "You must lose weight for your health", selectColor: ThemeApp.yellow)
  ];

  ResultOption getResult(int number, ){
    return _result[number];
  }
}
