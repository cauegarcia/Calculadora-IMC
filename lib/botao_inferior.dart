
import 'package:flutter/material.dart';
import 'package:projetoqi/conteudo_icone.dart';
import 'constantes.dart';




class BotaoInferior extends StatelessWidget {
  
  BotaoInferior({required this.tituloBotao, required this.aoPressionar});

  final Function aoPressionar;
  final String tituloBotao;
  

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: aoPressionar(),
      child: Container(
        child: Center(
          child: Text(
            tituloBotao,
            style: botaoGrandeTextStyle,
          ),
        ),
        color: corContainerInferior,
        margin: EdgeInsets.only(top: 10.0),
        padding: EdgeInsets.only(bottom: 20.0),
        width: double.infinity,
        height: alturaContainerInferior,
      )
    );
  }
}