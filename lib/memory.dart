import 'package:function_tree/function_tree.dart';

class Memory {
  String resultado = "";
  String expressao = "";
  final _valor = [];
  bool negativo = false;

  Memory() {
    _limparTela();
  }

  insereNumero(String texto) {
    if (texto == "AC" ||
        texto == "DEL" ||
        texto == "%" ||
        texto == "+/-" ||
        texto == "/" ||
        texto == "X" ||
        texto == "/" ||
        texto == "-" ||
        texto == "+" ||
        texto == "=" ||
        texto == ".") {
      teclasEspecias(texto);
    } else {
      resultado += texto;
    }
  }

  teclasEspecias(String texto) {
    if (texto == "AC") {
      _limparTela();
    }

    if (texto == "+" || texto == "-" || texto == "/" || texto == "*") {
      if (negativo) {
        _valor.add("-" + resultado);
        _valor.add(texto);

        expressao += "-" + resultado + texto;
        print("numero $_valor");
        resultado = "";
      } else {
        _valor.add(resultado);
        _valor.add(texto);

        expressao += resultado + texto;
        print("numero $_valor");
        resultado = "";
      }
    }

    if (texto == "+/-") {
      if (negativo == false) {
        negativo = true;
      } else {
        negativo = false;
      }
      print(negativo);
    }

    if (texto == "=") {
      _valor.add(resultado);
      print("numero $_valor");

      print("resolvendo a expressão");
      _calculaExpressao();
    }
    print("tratando as teclas especias");
  }

  _limparTela() {
    resultado = "";
    expressao = "";
    _valor.clear();
  }

  _calculaExpressao() {
    resultado = "";
    expressao = "";

    resultado = _valor.join(' ').interpret().toString();
    _valor.clear();
  }
}
