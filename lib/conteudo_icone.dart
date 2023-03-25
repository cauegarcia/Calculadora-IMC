import 'package:flutter/material.dart';


const descricaoTextStyle =  TextStyle(
  fontSize: 20.0, 
  color: Colors.black,
);

const numeroTextStyle =  TextStyle(
  fontSize: 20.0, 
  color: Colors.black,
);

const botaoGrandeTextStyle = TextStyle(
  fontSize: 25.0,
  fontWeight: FontWeight.bold,
);

const tituloTextStyle = TextStyle(
  fontSize: 50.0,
  fontWeight: FontWeight.bold,
);

const resultadoTextStyle = TextStyle(
  color: Color(0xff24d876),
  fontSize: 22,
  fontWeight: FontWeight.bold
);

const imcTextStyle = TextStyle(
  fontSize: 100.0,
  fontWeight: FontWeight.bold,
  color: Colors.black,
);

const corpoTextStyle = TextStyle(
  fontSize: 22.0,
  color: Colors.black
);

class ConteudoIcone extends StatelessWidget {

  ConteudoIcone({required this.icone, required this.descricao});

  final IconData icone;
  final String descricao;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icone,
          size: 95.0,),
        SizedBox(
          height: 15.0,),
        Text(
          descricao,
        style: descricaoTextStyle,
        ),
      ],
    );
  }
}