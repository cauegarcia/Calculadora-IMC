import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'botao_arredondado.dart';
import 'tela_resultados.dart';
import 'package:projetoqi/tela_principal.dart';
import 'cartao_padrao.dart';
import 'conteudo_icone.dart';
import 'botao_inferior.dart';
import 'calculadora_imc.dart';



enum Sexo {
  masculino,
  feminino,
}

class TelaPrincipal extends StatefulWidget {
  const TelaPrincipal({super.key});

  @override
  State<TelaPrincipal> createState() => _TelaPrincipalState();
}

class _TelaPrincipalState extends State<TelaPrincipal> {

  late Sexo sexoSelecionado;
  int altura = 180;
  int peso = 60;
  int idade = 20;
  
  var imc;
  
  get corAtivaCartaoPadrao => null;

  @override
  Widget build(BuildContext context) {
    var corInativaCartaoPadrao;
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculadora IMC"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Row(
             children: [
              Expanded(
                child: CartaoPadrao(
                  aoPressionar: (){
                    setState(() {
                      sexoSelecionado = Sexo.masculino;
                    });
                  },
                  cor: sexoSelecionado == Sexo.masculino 
                  ? corAtivaCartaoPadrao 
                  : corInativaCartaoPadrao,
                  filhoCartao: ConteudoIcone(
                    icone: FontAwesomeIcons.mars, 
                    descricao: 'MASCULINO',
                  ), 
                  ),
                ),
            ],
          )
          ),
          Expanded(
            child: CartaoPadrao(
              aoPressionar: (){
                    setState(() {
                      sexoSelecionado = Sexo.feminino;
                    });
                  },
              cor: sexoSelecionado == Sexo.feminino ? corAtivaCartaoPadrao : corInativaCartaoPadrao,
              filhoCartao: ConteudoIcone(
                icone: FontAwesomeIcons.venus,
                descricao: "FEMININO",
              ),
            ),
          ),
             Expanded(
                child: CartaoPadrao(
              cor: corAtivaCartaoPadrao,
              filhoCartao: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.baseline,
                textBaseline: TextBaseline.alphabetic,
                children: [
                  Text(
                    "ALTURA",
                    style: descricaoTextStyle,
                    ), 
                    Row(
                      children: [
                        Text(
                          altura.toString(),
                          style: TextStyle(
                            fontSize: 50.0,
                            fontWeight: FontWeight.w900,
                          ),
                          ),
                          Text(
                            "cm",
                            style: TextStyle(
                              fontSize: 50.0,
                            fontWeight: FontWeight.w900,
                            ),
                          ),
                      ],
                    ),
                    Slider(
                      activeColor: Color(0xffff5822),
                      inactiveColor: Color(0xff8de98),
                      onChanged: (double novoValor) {
                        setState(() {
                          altura = novoValor.round();
                        });
                      },
                      min: 120.0,
                      max: 220.0, 
                      value: altura.toDouble(),
                    ),
                ],
              ), aoPressionar: () {},
            ),
                  ),
          Expanded(
            child: Row(
              children: [
              Expanded(
                child: CartaoPadrao(
              cor: corAtivaCartaoPadrao,
              filhoCartao: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "PESO",
                    style: descricaoTextStyle,
                    ),
                    Text(
                      peso.toString(),
                      style: numeroTextStyle,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        BotaoArredondado(
                          icone: FontAwesomeIcons.minus,
                          aoPressionar: () {
                            setState(() {
                              peso--;
                            });
                          },
                        ),
                        SizedBox(width: 10.0,),
                        BotaoArredondado(
                          icone: FontAwesomeIcons.plus, 
                          aoPressionar: () {
                            setState(() {
                              peso++;
                            });
                          },
                        ),
                      ],
                    )
                ],
              ) ,
              aoPressionar: () {},
            ),
                  ),
              ],
            ),
          ),
          Expanded(
            child: CartaoPadrao(
              cor: corAtivaCartaoPadrao,filhoCartao: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "IDADE",
                    style: descricaoTextStyle,
                    ),
                    Text(
                      idade.toString(),
                      style: numeroTextStyle,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        BotaoArredondado(
                          icone: FontAwesomeIcons.minus,
                          aoPressionar: () {
                            setState(() {
                              idade--;
                            });
                          },
                        ),
                        SizedBox(width: 10.0,),
                        BotaoArredondado(
                          icone: FontAwesomeIcons.plus, 
                          aoPressionar: () {
                            setState(() {
                              idade++;
                            });
                          },
                        ),
                      ],
                    )
                ],
              ), aoPressionar:  () {},
              
              )
            ),
          BotaoInferior(
            tituloBotao: "CALCULAR",
            aoPressionar: () {

              CalculadoraIMC calc = CalculadoraIMC(
                altura: altura,
                peso: peso, imc: (this.imc) ,
                 
              );

        Navigator.push(
          context, MaterialPageRoute(
            builder: (context) => TelaResultados(
              resultadoIMC: calc.calcularIMC(),
              resultadoTexto: calc.obterResultado(),
              interpretacao: calc.obterInterpretacao(),
            ),
         ),
            
            );
           }
          ),
        ],
      ), 
    );
  }
}