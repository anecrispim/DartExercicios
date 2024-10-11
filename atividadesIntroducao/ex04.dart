/* 04) Faça um algoritmo que leia três notas de um aluno, calcule e escreva a média final deste
aluno. Considerar que a média é ponderada e que o peso das notas é 2, 3 e 5.
Fórmula para o cálculo da média final é:
mediaFinal = (n1 ∗ 2 + n2 ∗ 3 + n3 ∗ 5) / 10 */

import 'dart:io';

void main() {
  stdout.write('Insira a nota 1: ');
  String? entrada = stdin.readLineSync();

  double n1 = double.parse(entrada!);

  stdout.write('Insira a nota 2: ');
  entrada = stdin.readLineSync();

  double n2 = double.parse(entrada!);

  stdout.write('Insira a nota 3: ');
  entrada = stdin.readLineSync();

  double n3 = double.parse(entrada!);

  double mediaFinal = (n1 * 2 + n2 * 3 + n3 * 5) / 10;

  print('Média final: ${mediaFinal}');
}