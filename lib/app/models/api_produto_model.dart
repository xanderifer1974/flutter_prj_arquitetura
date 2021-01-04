class ApiprodutoModel {
  int id;
  String nome;
  String descricao;
  double preco;
  int categoriaId;

  ApiprodutoModel(
      {this.id, this.nome, this.descricao, this.preco, this.categoriaId});

  ApiprodutoModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    nome = json['nome'];
    descricao = json['descricao'];
    preco = json['preco'];
    categoriaId = json['categoria_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['nome'] = this.nome;
    data['descricao'] = this.descricao;
    data['preco'] = this.preco;
    data['categoria_id'] = this.categoriaId;
    return data;
  }
}
