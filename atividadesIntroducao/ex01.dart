
/* 01) Escreva um algoritmo para ler um número (do teclado) e escrever (na tela) o seu antecessor. */

import 'dart:io';

void main() {
  stdout.write('Informe um número: ');
  String? entrada = stdin.readLineSync();

  if (entrada != null) {
    int num = int.parse(entrada);
    print('Antecessor do número informado: ${num - 1}');
  } else {
    print('Não foi possível calcular o antecessor.');
  }
}