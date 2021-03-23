import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  _calcButton({String texto}) {
    return Expanded(
      flex: 1,
      child: RaisedButton(
        onPressed: () {
          print("botão pressionado");
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
                "000",
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
                  _calcButton(texto: "C"),
                  _calcButton(texto: "+/-"),
                  _calcButton(texto: "%"),
                  _calcButton(texto: "DEL"),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  _calcButton(texto: "7"),
                  _calcButton(texto: "8"),
                  _calcButton(texto: "9"),
                  _calcButton(texto: "/"),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  _calcButton(texto: "4"),
                  _calcButton(texto: "5"),
                  _calcButton(texto: "6"),
                  _calcButton(texto: "X"),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  _calcButton(texto: "1"),
                  _calcButton(texto: "2"),
                  _calcButton(texto: "3"),
                  _calcButton(texto: "-"),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  _calcButton(texto: "0"),
                  _calcButton(texto: "."),
                  _calcButton(texto: "="),
                  _calcButton(texto: "+"),
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
