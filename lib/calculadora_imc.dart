import 'dart:math';
import 'package:flutter/material.dart';
import 'package:projetoqi/main.dart';

class CalculadoraIMC  {
 CalculadoraIMC({required this.imc, required this.altura, required this.peso});

  final int altura;
  final int peso;
  final double imc;

  String calcularIMC() {
    double imc = peso / pow(altura / 100, 2);
    return imc.toStringAsFixed(1);
  }

  String obterResultado() {
    if (imc >= 25.0) {
      return "Acima do Peso";
    } else if (imc > 18.5) {
      return "Normal";
    } else {
      return "Abaixo do Peso";
    }
  }

  String obterInterpretacao() {
    if (imc >= 25.0) {
      return "Vcoê está com o Peso acima do normal, Tente se exercitar mais.";
    } else if (imc > 18.5) {
      return "Exelente! o seu peso está normal.";
    } else {
      return "Vcoê está com o Peso abaixo do normal, Tente comer mais";
    }
  }
}