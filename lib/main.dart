
import 'package:flutter/material.dart';


main() => runApp(PerguntaApp());

@override
class PerguntaApp extends StatelessWidget  {
  
  void responder() {
    print('Pergunta respondinda!');
  }


  Widget build(BuildContext context) {
    final List<String> perguntas = [
      "Qual é a sua cor favorita ?",
      "Qual é o seu animal favorito ?",
    ];
    
    
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Peguntas"),
        ),
        body: Column(
          children: <Widget>[
            Text(perguntas[0]),
            RaisedButton(
              child: Text("Resposta 1"),
              onPressed: responder,
            ),
            RaisedButton(
              child: Text("Resposta 1"),
              onPressed: responder,
            ),
            RaisedButton(
              child: Text("Resposta 1"),
              onPressed: responder,
            )
          ],
        ),
      ),
    );
  }
}