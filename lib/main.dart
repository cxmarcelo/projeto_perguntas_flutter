
import 'package:flutter/material.dart';


main() => runApp(PerguntaApp());


class PerguntaAppState extends State<PerguntaApp> {
  var perguntaSelecionada = 0;
  void responder() {
    setState(() {
    perguntaSelecionada++;      
    });
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
            Text(perguntas[perguntaSelecionada]),
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



class PerguntaApp extends StatefulWidget  {
  
  @override
  PerguntaAppState createState() {
    return PerguntaAppState();
  }



}