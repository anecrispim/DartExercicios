/* 03. Crie uma função que realize cálculo de comissão de venda. Como parâmetros deve-se
receber, o salário do funcionário, o valor total de vendas do mês passado e o percentual
da comissão em cima do valor total de vendas. Apresentar ao retornar da função a frase:
• O funcionário Fulano de Tal deverá receber este mês o valor X, sendo Y de salário e
Z de comissão.
• Ler o nome do funcionário para apresentar;
• X = salário + comissão */

import 'dart:io';

void calculaComissao(String nomeFuncionario, double salarioBase, double valorVendas, double percentualComissao) {
  double valorComissao = valorVendas * (percentualComissao / 100);
  double salarioTotal = salarioBase + valorComissao;

  print('O funcionário ${nomeFuncionario} deverá receber este mês o valor R\$ ${salarioTotal}, sendo  R\$ ${salarioBase} de salário e R\$ ${valorComissao} de comissão.');
}
void main() {
  stdout.write('Insira o nome do funcionário: ');
  String? entrada = stdin.readLineSync();

  String nomeFuncionario = entrada!;

  stdout.write('Insira o salário base do funcionário: ');
  entrada = stdin.readLineSync();

  double salarioBase = double.parse(entrada!);

  stdout.write('Insira o valor de vendas do mês passado do funcionário: ');
  entrada = stdin.readLineSync();

  double valorVendas = double.parse(entrada!);

  stdout.write('Insira o percentual de comissão para vendas: ');
  entrada = stdin.readLineSync();

  double percentualComissao = double.parse(entrada!);

  calculaComissao(nomeFuncionario, salarioBase, valorVendas, percentualComissao);
}