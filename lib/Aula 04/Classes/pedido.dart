class Pedido {
  String id;
  String? descricao;
  double valor;
  Function? funcao;
  Endereco endereco;
  Cliente cliente;
  List<Produto> produto;
  List<Categoria>? categoria;

  Pedido(this.id, this.descricao, this.funcao, this.cliente, this.endereco,
      this.valor, this.produto);
  Pedido.construtorNomeado(
      {required this.id,
      required this.cliente,
      required this.endereco,
      required this.valor,
      required this.produto});
}

class Categoria {
  String? id;
  String? nome;
}

class Produto {
  String? id;
  String? nome;
  String? descricao;
  double? valor;

  Produto(this.id, this.nome, this.descricao, this.valor);
  Produto.construtorNomeado(
      {required this.id,
      required this.nome,
      required this.descricao,
      required this.valor});
}

class Endereco {
  String? logradouro;
  String? numero;
  String? bairro;
  String? cidade;
  Estado estado;
  String? pais;

  Endereco(this.estado);
  Endereco.construtorNomeado(
      {required this.logradouro,
      required this.numero,
      required this.bairro,
      required this.cidade,
      required this.estado,
      required this.pais});
}

class Estado {
  String? sigla;
  String? nome;

  Estado.construtorAnonimo();
  Estado.construtorNomeado({this.sigla, this.nome});
  Estado(this.sigla, this.nome);
}

class Cliente {
  String? nome;
  String? CPF;
  DateTime? nascimento;
  DateTime? dataEntrada;
  String email; //atributo nao nulo
  Function? funcao;
  Cliente.construtorNomeado({
    required this.nome,
    required this.CPF,
    required this.nascimento,
    required this.dataEntrada,
    required this.email,
  });
  Cliente.construtorPadrao(
      this.nome, this.CPF, this.nascimento, this.dataEntrada, this.email);
}
