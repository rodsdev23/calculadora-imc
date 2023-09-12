import 'dart:convert';
import 'dart:io';

class ConsoleUtils {
  static String lerStringComTexto(String texto) {
    print(texto);
    return lerString();
  }

  static String lerString() {
    return stdin.readLineSync(encoding: utf8) ?? "";
  }

  static double? lerDouble() {
    var value = lerString();
    try {
      return double.parse(value);
    } catch (e) {
      return null;
    }
  }

  static double? lerDoubleComTexto(String texto) {
    print(texto);
    return lerDouble();
  }

  static calcularIMC(double peso, double altura) {
    double imc = peso / (altura * altura);

    return imc;
  }

  static classificacao(double imc) {
    String classificacao = "";
    if (imc < 16) {
      classificacao = 'Magreza grave';
    } else if (imc < 17) {
      classificacao = 'Magreza moderada';
    } else if (imc < 18.5) {
      classificacao = 'Magreza leve';
    } else if (imc < 25) {
      classificacao = 'Saudável';
    } else if (imc < 30) {
      classificacao = 'Sobrepeso';
    } else if (imc < 35) {
      classificacao = 'Obesidade – GRAU I';
    } else if (imc < 40) {
      classificacao = 'Obesidade – GRAU II | Severa';
    } else if (imc > 40) {
      classificacao = 'Obesidade – GRAU III | Mórbida';
    } else {
      return "Não classificado.";
    }
    return classificacao;
  }
}
