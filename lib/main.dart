
import 'package:flutter/material.dart';
import './questao.dart';
import './resposta.dart';

main() => runApp(PerguntaApp());


class _PerguntaAppState extends State<PerguntaApp> {
  var _perguntaSelecionada = 0;
  void _responder() {
    setState(() {
    _perguntaSelecionada++;      
    });
  }

    Widget build(BuildContext context) {


    final List<Map<String, Object>> perguntas = [
      {
        "texto": "Qual é a sua cor favorita ?",
        "respostas": ["Preto", "Vermelho", "Verde", "Branco"]
      },
      {
        "texto": "Qual é o seu animal favorito ?",
        "respostas": ["Coelho", "Cobra", "Elefante", "Leão"]
      },
      {
        "texto": "Qual seu instrutor favorito ?",
        "respostas": ["Maria", "João", "Leo", "Pedro"]
      }
    ];
    
    
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Peguntas"),
        ),
        body: Column(
          children: <Widget>[
            Questao(perguntas[_perguntaSelecionada]['texto']),
            Resposta("Resposta 1", _responder),
            Resposta("Resposta 2", _responder),
            Resposta("Resposta 3", _responder)
          ],
        ),
      ),
    );
  }
}



class PerguntaApp extends StatefulWidget  {
  
  @override
  _PerguntaAppState createState() {
    return _PerguntaAppState();
  }



}