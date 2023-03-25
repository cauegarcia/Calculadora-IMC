
import 'package:flutter/material.dart';
import 'package:projetoqi/botao_inferior.dart';
import 'cartao_padrao.dart';
import 'constantes.dart';
import 'package:projetoqi/conteudo_icone.dart';


class TelaResultados extends StatelessWidget {

  TelaResultados({required this.resultadoIMC, required this.resultadoTexto, required this.interpretacao});

  final String resultadoIMC;
  final String resultadoTexto;
  final String interpretacao;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("CALCULADORA IMC"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.centerLeft,
            child: Text(
              "RESULTADO", 
              style: tituloTextStyle,
            ),
            ),
          ),
          Expanded(
            flex: 5,
            child: CartaoPadrao(
              cor: corAtivaCartaoPadrao,
              filhoCartao: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                  resultadoTexto.toUpperCase(), 
                  style: resultadoTextStyle,
                  ),
                  Text(
                    resultadoIMC,
                    style: imcTextStyle,
                  ),
                  Text(
                    interpretacao,
                    textAlign: TextAlign.center,
                    style: corpoTextStyle,
                  ),
                ],
              ), aoPressionar: () {},
            ),
            ),
            BotaoInferior(tituloBotao: "RECALCULAR",
             aoPressionar: () {
              Navigator.pop(context);
             },
            ),
        ],
      )
    );
  }
}