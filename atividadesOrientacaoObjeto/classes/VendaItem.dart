import "Produto.dart";

class VendaItem {
  Produto produto;
  int quantidade;

  VendaItem(this.produto, {this.quantidade = 1});

  
}