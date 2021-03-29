import 'package:function_tree/function_tree.dart';

class Memory {
  String resultado = "0";
  String expressao = "0";

  Memory() {
    _limparTela();
  }

  _limparTela() {
    resultado = "";
    expressao = "";
  }

   insereNumero(String texto) {
    if (texto == "AC") {
      resultado = "0";
      expressao = "0";
    } else if (texto == "DEL") {
      expressao = expressao.substring(0, expressao.length - 1);
      if (expressao == "") {
        expressao = "0";
        resultado = "0";
      }
    } else if (texto == "=") {
      try {
        resultado = expressao.interpret().toString();
      } catch (e) {
        resultado = "Erro";
      }
    } else {
      if (expressao == "0") {
        expressao = texto;
      } else {
        expressao = expressao + texto;
      }
    }
  }
}
