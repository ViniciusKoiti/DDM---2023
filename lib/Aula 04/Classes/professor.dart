class Professor {
  int? SIAPE;
  String? nome;
  String? CPF;
  DateTime? nascimento; //atributo privado
  DateTime? dataEntrada;
  String email;
  Function? funcaoDoProfessor;

  Professor(this.SIAPE, this.nome, this.CPF, this.nascimento, this.dataEntrada,
      this.email, this.funcaoDoProfessor);
  Professor.construtorNomeado(
      {required this.SIAPE,
      required this.nome,
      required this.CPF,
      required this.nascimento,
      required this.dataEntrada,
      required this.email,
      required this.funcaoDoProfessor});
  Professor.construtorPadrao(this.SIAPE, this.nome, this.CPF, this.nascimento,
      this.dataEntrada, this.email);
}
