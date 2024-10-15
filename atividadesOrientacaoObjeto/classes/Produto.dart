class Produto {
  int codigo;
  String nome;
  double preco;
  double desconto;

  Produto(this.codigo, this.nome, this.preco, {this.desconto = 0});
  double get precoComDesconto {
    return preco - ((desconto / 100) * preco);
  }
}