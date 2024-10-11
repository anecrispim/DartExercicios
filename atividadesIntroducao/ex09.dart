/* 09) Faça um Programa que pergunte quanto você ganha por hora e o número de horas
trabalhadas no mês. Calcule e mostre o total do seu salário no referido mês, sabendo-se que são
descontados 11% para o Imposto de Renda, 8% para o INSS e 5% para o sindicato, faça um
programa que nos dê:
 salário bruto.
 quanto pagou ao INSS.
 quanto pagou ao sindicato.
 salário líquido.
 calcule os descontos e o salário líquido, conforme a tabela abaixo:
+ Salário Bruto : R$
- IR (11%) : R$
- INSS (8%) : R$
- Sindicato ( 5%) : R$
= Salário Liquido : R$
Obs.: Salário Bruto - Descontos = Salário Líquido. */

import 'dart:io';

void main() {
  stdout.write('Quanto você ganha por hora: ');
  String? entrada = stdin.readLineSync();

  double ganhoHora = double.parse(entrada!);

  stdout.write('Insira o número de horas trabalhadas no mês: ');
  entrada = stdin.readLineSync();

  double horasTrabalhadas = double.parse(entrada!);

  double salarioBruto = horasTrabalhadas * ganhoHora;
  double descontoIR = salarioBruto * 0.11;
  double descontoINSS = salarioBruto * 0.08;
  double descontoSindicato = salarioBruto * 0.05;
  double totalDescontos = descontoIR + descontoINSS + descontoSindicato;
  double salarioLiquido = salarioBruto - totalDescontos;

  print('\nSalário Bruto : R\$ ${salarioBruto}');
  print('IR (11%): R\$ ${descontoIR}');
  print('INSS (8%): R\$ ${descontoINSS}');
  print('Sindicato (5%): R\$ ${descontoSindicato}');
  print('Salário Líquido : R\$ ${salarioLiquido}');

}