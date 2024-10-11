/* 01. Uma agência de uma cidade do interior, tem, no máximo, 10.000 clientes. Crie
um algoritmo que possa entrar com número da conta, nome e saldo de cada cliente.
O programa deverá imprimir todas as contas, os respectivos saldos e uma das
mensagens: POSITIVO / NEGATIVO. A digitação acaba quando se digita -999
para o número da conta OU quando chegar ao 10.000. Ao final, deverá ser
impresso o total de clientes com saldo negativo, o total de clientes da agência e o
saldo da agência. */

import 'dart:io';
void main() {
  const qtdMaxClientes = 10000;

  int totalClienteSaldoNegativo = 0;
  int totalClientesAgencia = 0;
  double totalSaldoAgencia = 0;

  var listaContas = [];
  for (var i = 0; i <= qtdMaxClientes; i++) {
    stdout.write('Insira o número da conta: ');
    String? entrada = stdin.readLineSync();

    int numConta = int.parse(entrada!);

    stdout.write('Insira o nome do cliente: ');
    entrada = stdin.readLineSync();

    String nomeCliente = entrada!;

    stdout.write('Insira o saldo do cliente: ');
    entrada = stdin.readLineSync();

    double saldo = double.parse(entrada!);

    
    String status = 'POSITIVO';
    if (saldo < 0) {
      status = 'NEGATIVO';
      totalClienteSaldoNegativo++;
    }

    String conta = 'Num. Conta: ${numConta}; Nome Cliente: ${nomeCliente}; Saldo: R\$ ${saldo}; Status: ${status}';

    listaContas.add(conta);

    totalClientesAgencia++;
    totalSaldoAgencia += saldo;

    if (numConta.abs() >= qtdMaxClientes) {
      break;
    }
  }

  print("Contas do Banco: ");
  print(listaContas);
  print('\nTotal de clientes saldo negativo: ${totalClienteSaldoNegativo}');
  print('Total clientes agência: ${totalClientesAgencia}');
  print('Saldo agência: R\$ ${totalSaldoAgencia}');
}