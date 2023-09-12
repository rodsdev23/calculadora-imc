import 'dart:io';
import 'package:calculadora_imc/exception/dados_invalidos_exception.dart';

import 'classes/pessoa.dart';
import 'models/console_utils.dart';

void execute() {
  print("...::Bem-Vindo a Calculador IMC::...");
  String nome =
      ConsoleUtils.lerStringComTexto("Digite seu nome para começar: ");

  try {
    if (nome.trim() == "") {
      throw NomeInvalidoException();
    }
  } catch (e) {
    // não recomendado.
    nome = "User - Anônimo";
    print(NomeInvalidoException());
    //exit(0);
  }

  double? peso;
  double? altura;

  peso = ConsoleUtils.lerDoubleComTexto("Digite seu peso em Kg (Ex.: 82.5");

  try {
    if (peso == null) {
      throw PesoInvalidaException();
    }
  } catch (e) {
    print(PesoInvalidaException());
    exit(0);
  }

  altura = ConsoleUtils.lerDoubleComTexto(
      "Digite sua altura em metros (Ex.: 1.80):");
  try {
    if (altura == null) {
      throw AlturaInvalidaException();
    }
  } catch (e) {
    print(AlturaInvalidaException());
    exit(0);
  }

  var p1 = Pessoa(nome);

  p1.setPeso(peso);
  p1.setAltura(altura);

  peso = p1.getPeso();
  altura = p1.getAltura();
  double imc = ConsoleUtils.calcularIMC(peso, altura);
  var classificacao = ConsoleUtils.classificacao(imc);

  print("O IMC de $nome é: ${imc.toStringAsFixed(2)} ");
  print("Classificação do IMC: $classificacao");
}
