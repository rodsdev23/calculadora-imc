class NomeInvalidoException implements Exception {
  // método error q executa "nome inválido"
  String error() {
    String nome = "Nome inválido";
    return nome;
  }

  @override
  String toString() {
    return "NomeInvalidoException: ${error()}";
  }
}

class PesoInvalidaException implements Exception {
  double errorPeso() {
    double peso = 0;
    return peso;
  }

  @override
  String toString() {
    return "PesoInvalidoException: ${errorPeso()}";
  }
}

class AlturaInvalidaException implements Exception {
  double errorAltura() {
    double altura = 0;
    return altura;
  }

  @override
  String toString() {
    return "alturaInvalidaException: ${errorAltura()}";
  }
}
