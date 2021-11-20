import 'package:flutter/material.dart';
import 'dart:math';


void main(){
  runApp(MaterialApp(
    home: Home(),
    debugShowCheckedModeBanner: false,
  ));
}
class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  var _frases=[
    "No meio da dificuldade encontra-se a oportunidade.",
    "É parte da cura o desejo de ser curado.",
    "O que me preocupa não é o grito dos maus. É o silêncio dos bons.",
    "O insucesso é apenas uma oportunidade para recomeçar com mais inteligência.",
    "Quando você quer alguma coisa, todo o universo conspira para que você realize o seu desejo.",
    "Só se pode alcançar um grande êxito quando nos mantemos fiéis a nós mesmos.",
    "Nossa maior fraqueza está em desistir. O caminho mais certo de vencer é tentar mais uma vez.",
    "Na vida, não existem soluções. Existem forças em marcha: é preciso criá-las e, então, a elas seguem-se as soluções."
  ];

  var _fraseGerada = "Clique abaixo para gerar uma frase!";

  void _gerarFrase(){
    var numeroSorteado = Random().nextInt(_frases.length);

    setState(() {
      _fraseGerada = _frases[numeroSorteado];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Frases do dia"),
        backgroundColor: Colors.green,
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        width: double.infinity,
        decoration: BoxDecoration(
          border: Border.all(width: 3,color: Colors.amber)
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Image.asset("images/logo.png"),
            Text(
              _fraseGerada,
              textAlign: TextAlign.justify,
              style: TextStyle(
                fontSize: 17,
                fontStyle: FontStyle.italic,
                color: Colors.black
              ),
            ),
           RaisedButton(
             child: Text(
               "Nova Frase",
               style: TextStyle(
                 fontSize: 25,
                 color: Colors.white,
                 fontWeight: FontWeight.bold
               ),
             ),
             color: Colors.green,
             onPressed: _gerarFrase,
           )
          ],
        ),
      ),
    );
  }
}

