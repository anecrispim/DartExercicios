import 'Cliente.dart';
import 'VendaItem.dart';
import 'Produto.dart';

class Venda {
  Cliente cliente;
  List<VendaItem> itens;

  Venda(this.cliente, {List<VendaItem>? itens}) : itens = itens ?? [];

  double get valorTotal {
    return itens
      .map((item) => item.produto.preco * item.quantidade)
      .reduce((t, a) => t + a);
    /*este método equivale a passar item
    por item da lista, e somando seus valores */
  }

  void pedido(Produto p1, Produto p2, Produto p3) {
    itens.add(VendaItem(p1));
    itens.add(VendaItem(p2));
    itens.add(VendaItem(p3));
  }
}