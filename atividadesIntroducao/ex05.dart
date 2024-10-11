/* 05) Faça um algoritmo que leia o nome do aluno, quatro notas deste aluno, e também leia os
quatro pesos para realizar o cálculo da média ponderada. Apresente a média final do aluno. */

import 'dart:io';

void main() {
  stdout.write('Insira o nome do aluno: ');
  String? entrada = stdin.readLineSync();

  String nomeAluno = entrada!;

  stdout.write('Insira a nota 1 do aluno: ');
  entrada = stdin.readLineSync();

  double n1 = double.parse(entrada!);

  stdout.write('Insira a nota 2 do aluno: ');
  entrada = stdin.readLineSync();

  double n2 = double.parse(entrada!);

  stdout.write('Insira a nota 3 do aluno: ');
  entrada = stdin.readLineSync();

  double n3 = double.parse(entrada!);

  stdout.write('Insira a nota 4 do aluno: ');
  entrada = stdin.readLineSync();

  double n4 = double.parse(entrada!);

  stdout.write('Insira o peso da nota 1: ');
  entrada = stdin.readLineSync();

  double p1 = double.parse(entrada!);

  stdout.write('Insira o peso da nota 2: ');
  entrada = stdin.readLineSync();

  double p2 = double.parse(entrada!);

  stdout.write('Insira o peso da nota 3: ');
  entrada = stdin.readLineSync();

  double p3 = double.parse(entrada!);

  stdout.write('Insira o peso da nota 4: ');
  entrada = stdin.readLineSync();

  double p4 = double.parse(entrada!);

  double mediaFinal = (n1 * p1 + n2 * p2 + n3 * p3 + n4 * p4) / (p1 + p2 + p3 + p4);

  print('Média final do(a) ${nomeAluno}: ${mediaFinal}');
}