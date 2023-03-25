import 'package:flutter/material.dart';
import 'tela_principal.dart';

class CartaoPadrao extends StatelessWidget {

  const CartaoPadrao({required this.cor, required this.filhoCartao,  required this.aoPressionar});

  final Color cor;
  final Widget filhoCartao;
  final Function aoPressionar;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: aoPressionar(),
      child: Container(
        child: filhoCartao,
          margin: EdgeInsets.all(20.0),
          decoration: BoxDecoration(
            color: cor,
            borderRadius: BorderRadius.circular(10.0)
          ),
        ),
    );
  }
}