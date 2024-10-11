/* 02) Escreva um algoritmo para ler o número total de eleitores de um município, o número de
votos brancos, nulos e válidos. Calcular e escrever o percentual que cada um representa em
relação ao total de eleitores. */

import 'dart:io';

void main() {
  stdout.write('Insira o número total de eleitores do município: ');
  String? entrada = stdin.readLineSync();

  int totalE = 0;
  int totalB = 0;
  int totalN = 0;

  if (entrada != null) {
    totalE = int.parse(entrada);
  } else {
    print('A inserção é obrigatória');
  }

  stdout.write('Insira o número total de votos brancos do município: ');
  entrada = stdin.readLineSync();

  if (entrada != null) {
    totalB = int.parse(entrada);
    
  } else {
    print('A inserção é obrigatória');
  }

  stdout.write('Insira o número total de votos nulos do município: ');
  entrada = stdin.readLineSync();

  if (entrada != null) {
    totalN = int.parse(entrada);
  } else {
    print('A inserção é obrigatória');
  }

  int totalV = (totalE - totalB - totalN).abs();

  print('Número total de votos válidos: ${totalV}');

  double percentualB = (totalB * 100) / totalE;
  double percentualN = (totalN * 100) / totalE;
  double percentualV = (totalV * 100) / totalE;

  print('O percentual de votos brancos é de : ${percentualB}%');
  print('O percentual de votos nulos é de : ${percentualN}%');
  print('O percentual de votos válidos é de : ${percentualV}%');
}