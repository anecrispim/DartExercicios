import 'classes/Cliente.dart';
import 'classes/Produto.dart';
import 'classes/Venda.dart';

void main() {
  Cliente cliente = Cliente(nome: 'João Silva', cpf: '123.456.789-00');
  Produto produto1 = Produto(1, 'Produto 1', 100.0, desconto: 10);
  Produto produto2 = Produto(2, 'Produto 2', 50.0);
  Produto produto3 = Produto(3, 'Produto 3', 150.0, desconto: 5);

  Venda venda = Venda(cliente);
  venda.pedido(produto1, produto2, produto3);

  print('Valor total: ${venda.valorTotal}');
}