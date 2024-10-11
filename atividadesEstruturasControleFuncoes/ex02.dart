/* 02. Faça um algoritmo que leia a idade de várias pessoas e apresente o total de pessoas
com menos de 21 anos e o total de pessoas com mais de 50 anos. Considerar idade
válida entre 0 e 140 anos, inclusive. */

import 'dart:io';
void main() {

  const idadeMinima = 0;
  const idadeMaxima = 140;

  int totalMenor21 = 0;
  int totalMaior50 = 0;
  int idade = 0;
  while (idade <= idadeMaxima && idade >= idadeMinima) {
    
    stdout.write('Insira sua idade: ');
    String? entrada = stdin.readLineSync();

    idade = int.parse(entrada!);

    if (idade > idadeMaxima || idade < idadeMinima) {
      break;
    }

    if (idade < 21) {
      totalMenor21++;
    } else if (idade > 50) {
      totalMaior50++;
    }
  }

  print('Total pessoas com menos de 21 anos de idade: ${totalMenor21}');
  print('Total pessoas com mais de 50 anos de idade: ${totalMaior50}');
}