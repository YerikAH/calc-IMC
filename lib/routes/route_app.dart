import 'package:flutter/material.dart';
import '../screen/screens.dart';

class RouteApp{
  static const initialRoute = 'home';
  static Map <String, Widget Function(BuildContext)> myRoutes = {
    'home': (BuildContext context) => const HomeScreen(),
    'info': (BuildContext context) => const InfoScreen(),

  };
  static  Route<dynamic> generateRouting( RouteSettings settings) {
  return MaterialPageRoute(
    builder: (context) => const ErrorScreen()
    );
  }
}