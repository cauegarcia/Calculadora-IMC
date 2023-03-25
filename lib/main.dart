import 'package:flutter/material.dart' show BuildContext, Color, MaterialApp, StatelessWidget, ThemeData, Widget, runApp;
import 'tela_principal.dart';

void main() => runApp(const CalculadoraIMC());


class CalculadoraIMC extends StatelessWidget {
  const CalculadoraIMC({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF616161),
        scaffoldBackgroundColor: Color(0xFF616161)
      ),
      home: TelaPrincipal(),
    );
  }
}