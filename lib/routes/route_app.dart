
import 'package:flutter/material.dart';

import '../screen/screens.dart';

class RouteApp{
  static const initialRoute = 'home';
  Map <String, Widget Function(BuildContext)> myRoutes = {
    'home': (BuildContext context) => const HomeScreen(),
    'info': (BuildContext context) => const InfoScreen(),
  };
}