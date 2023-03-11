class Aluno {
  int? RA;
  String? nome;
  String? CPF;
  DateTime? nascimento; //atributo privado
  Function? minhaFuncao;

  Aluno.comFuncao(
      {required this.RA,
      required this.nome,
      required this.CPF,
      required this.nascimento,
      required this.minhaFuncao});
  Aluno.construtorNomimal(
      {required this.RA,
      required this.nome,
      required this.CPF,
      required this.nascimento});

  Aluno.construtorPadrao(this.RA, this.nome, this.CPF, this.nascimento);
}
