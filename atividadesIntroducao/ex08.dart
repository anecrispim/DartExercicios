/* 08) Tendo como dados de entrada a altura e o sexo de uma pessoa, construa um algoritmo que
calcule seu peso ideal, utilizando as seguintes fórmulas:
Para homens: (72.7*h) - 58
Para mulheres: (62.1*h) - 44.7 (h = altura) */

import 'dart:io';

void main() {
  stdout.write('Insira seu sexo (f ou m): ');
  String? entrada = stdin.readLineSync();

  String sexo = entrada!;

  stdout.write('Insira sua altura: ');
  entrada = stdin.readLineSync();

  double altura = double.parse(entrada!);

  double pesoIdeal = 0;

  if (sexo == 'f') {
    pesoIdeal = (62.1 * altura) - 44.7;
  } else if (sexo == 'm') {
    pesoIdeal = (72.7 * altura) - 58;
  } else {
    print('Entrada para o sexo inválida, digite m para masculino ou f para feminino.');
  }

  print('Peso ideal: ${pesoIdeal}');
}