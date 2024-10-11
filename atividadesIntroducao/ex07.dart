/* 07) Faça um Programa que peça 2 números inteiros e um número real. Calcule e mostre:
a) produto do dobro do primeiro com metade do segundo.
b) soma do triplo do primeiro com o terceiro. */

import 'dart:io';

void main() {
  stdout.write('Insira um número inteiro: ');
  String? entrada = stdin.readLineSync();

  int numInt1 = int.parse(entrada!);

  stdout.write('Insira outro número inteiro: ');
  entrada = stdin.readLineSync();

  int numInt2 = int.parse(entrada!);

  stdout.write('Insira um número real: ');
  entrada = stdin.readLineSync();

  double numReal = double.parse(entrada!);

  double produtoA = (numInt1 * 2) * (numInt2 / 2);
  double somaB = (numInt1 * 3) + numReal;

  print('a) produto do dobro do primeiro com metade do segundo: ${produtoA}');
  print('b) soma do triplo do primeiro com o terceiro: ${somaB}');
}