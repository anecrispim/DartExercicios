/* 03) Escreva um algoritmo para ler o salário mensal atual de um funcionário e o percentual de
reajuste. Calcular e escrever o valor do novo salário. */

import 'dart:io';

void main() {
  stdout.write('Insira o salário: ');
  String? entrada = stdin.readLineSync();

  double salario = 0;
  double percentualR = 0;

  if (entrada != null) {
    salario = double.parse(entrada);
  } else {
    print('A inserção é obrigatória');
  }

  stdout.write('Insira o percentual de reajuste: ');
  entrada = stdin.readLineSync();

  if (entrada != null) {
    percentualR = double.parse(entrada);
  } else {
    print('A inserção é obrigatória');
  }

  double aumento = salario * (percentualR / 100);
  double novoSalario = salario + aumento;

  print('Novo salário: R\$ ${novoSalario}');
}