import 'package:auto_size_text/auto_size_text.dart';
import 'package:calculadora/memory.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final _memory = Memory();

  _calcButton({String texto, Color cor}) {
    return Expanded(
      flex: 1,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(primary: cor, side: null),
        onPressed: () {
          setState(() {
            _memory.insereNumero(texto);
          });
        },
        child: Text(
          texto,
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.normal,
          ),
        ),
      ),
    );
  }

  _createDisplay() {
    return Expanded(
      flex: 1,
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: AutoSizeText(
                _memory.expressao,
                minFontSize: 20.0,
                maxFontSize: 40.0,
                maxLines: 1,
                textAlign: TextAlign.end,
                style: TextStyle(
                  fontWeight: FontWeight.w200,
                  decoration: TextDecoration.none,
                  fontSize: 40.0,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: AutoSizeText(
                _memory.resultado,
                minFontSize: 20.0,
                maxFontSize: 80.0,
                maxLines: 1,
                textAlign: TextAlign.end,
                style: TextStyle(
                  fontWeight: FontWeight.w200,
                  decoration: TextDecoration.none,
                  fontSize: 80.0,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  _createKeyboard() {
    return Expanded(
      child: Container(
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  _calcButton(texto: "AC", cor: Colors.orange),
                  _calcButton(texto: "+/-", cor: Colors.orange),
                  _calcButton(texto: "%", cor: Colors.orange),
                  _calcButton(texto: "DEL", cor: Colors.orange),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  _calcButton(texto: "7", cor: Colors.grey),
                  _calcButton(texto: "8", cor: Colors.grey),
                  _calcButton(texto: "9", cor: Colors.grey),
                  _calcButton(texto: "/", cor: Colors.orange),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  _calcButton(texto: "4", cor: Colors.grey),
                  _calcButton(texto: "5", cor: Colors.grey),
                  _calcButton(texto: "6", cor: Colors.grey),
                  _calcButton(texto: "*", cor: Colors.orange),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  _calcButton(texto: "1", cor: Colors.grey),
                  _calcButton(texto: "2", cor: Colors.grey),
                  _calcButton(texto: "3", cor: Colors.grey),
                  _calcButton(texto: "-", cor: Colors.orange),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  _calcButton(texto: "0", cor: Colors.grey),
                  _calcButton(texto: ".", cor: Colors.grey),
                  _calcButton(texto: "=", cor: Colors.orange),
                  _calcButton(texto: "+", cor: Colors.orange),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.grey[400],
        title: Text("Calculadora"),
      ),
      body: Column(
        children: [
          _createDisplay(),
          Divider(
            height: 0.5,
          ),
          _createKeyboard(),
        ],
      ),
    );
  }
}
