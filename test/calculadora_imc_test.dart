//import 'package:calculadora_imc/calculadora_imc.dart';
import 'package:test/test.dart';
import 'package:calculadora_imc/models/console_utils.dart' as app;

void main() {
  test('Esperado uma string com nome digitado', () {
    expect(app.ConsoleUtils.lerStringComTexto("Digite seu nome: "),
        equals("Rodrigo"));
  });

  test('Esperado um double com o peso.', () {
    expect(app.ConsoleUtils.lerDoubleComTexto("Digite seu peso: "), equals(72));
  });

  test('Esperado um double com a altura.', () {
    expect(app.ConsoleUtils.lerDoubleComTexto("Digite sua altura: "),
        equals(1.73));
  });

  test('Deve Retorna a classificação ', () {
    expect(app.ConsoleUtils.classificacao(24.06), equals("Saudável"));
  });

  test("Calcular IMC", () {
    expect(app.ConsoleUtils.calcularIMC(72, 1.73).toStringAsFixed(2),
        matches("24.06"));
  });
}
