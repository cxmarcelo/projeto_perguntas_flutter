import 'package:flutter/material.dart';

class Resposta extends StatelessWidget {

  final String texto;
  final void Function() onSelecionado;

  Resposta(this.texto, this.onSelecionado);
  
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
              textColor: Colors.white,
              color: Colors.blue,
              child: Text(texto),
              onPressed: onSelecionado,
            ),    
    );
  }
}