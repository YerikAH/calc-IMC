import 'package:app_calc_imc/routes/route_app.dart';
import 'package:app_calc_imc/theme/theme_app.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'calcIMC',
      initialRoute: 'home',
      routes: RouteApp.myRoutes,
      onGenerateRoute:RouteApp.generateRouting,
      theme: ThemeApp.appConfigTheme,
    );
  }
}