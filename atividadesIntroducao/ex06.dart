/* 06) Faça um Programa que peça a temperatura em graus Farenheit, transforme e mostre a
temperatura em graus Celsius. C = (5 * (F-32) / 9). */

import 'dart:io';

void main() {
  stdout.write('Insira a temperatura em graus Farenheit: ');
  String? entrada = stdin.readLineSync();

  double farenheit = double.parse(entrada!);

  double celsius = (5 * (farenheit-32) / 9);

  print('Temperatura em graus Celsius: ${celsius}°C');
}