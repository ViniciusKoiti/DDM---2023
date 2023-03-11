import 'package:aula02/Aula%2004/Classes/pedido.dart';

import '../lib/Aula 04/Classes/aluno.dart';
import '../lib/Aula 04/Classes/professor.dart';

void minhaFuncao() {
  print("buscar livro");
}

void main(List<String> arguments) {
  List<Aluno> listaDeAlunos;

  var aluno = Aluno.construtorNomimal(
      RA: 123456789,
      nome: "Felipe Adrian da Hora de Arruda",
      CPF: "000.000.000-00",
      nascimento: DateTime.now());

  var aluno2 = Aluno.construtorPadrao(12345678910,
      "Felipe Adrian da Hora de Arruda 2", "000.000.000-10", DateTime.now());

  var alunoComFuncao = Aluno.comFuncao(
      RA: 123456789,
      nome: "Felipe Adrian da Hora de Arruda",
      CPF: "000.000.000-00",
      nascimento: DateTime.now(),
      minhaFuncao: minhaFuncao);

  Professor professor = Professor.construtorNomeado(
      SIAPE: 123456789,
      nome: "Felipe Adrian da Hora de Arruda",
      CPF: "000.000.000-00",
      nascimento: DateTime.now(),
      dataEntrada: DateTime.now(),
      email: "felipe@email",
      funcaoDoProfessor: minhaFuncao);

  Aluno alunoComFuncaoAnonima = Aluno.comFuncao(
      RA: 123456789,
      nome: "Felipe Adrian da Hora de Arruda",
      CPF: "000.000.000-00",
      nascimento: DateTime.now(),
      minhaFuncao: () {
        print("Tome");
      });

  listaDeAlunos = [aluno, aluno2, alunoComFuncao, alunoComFuncaoAnonima];
  print("${aluno.nome} \n ${aluno.CPF} \n ${aluno.RA} \n ${aluno.nascimento}");
  print("\n");

  print(
      "${aluno2.nome} \n ${aluno2.CPF} \n ${aluno2.RA} \n ${aluno2.nascimento}");
  print("\n");

  print(
      "${professor.nome} \n ${professor.CPF} \n ${professor.SIAPE} \n ${professor.dataEntrada} \n ${professor.email}");

  print(
      "${Aluno.construtorNomimal(RA: 123456789, nome: "Felipe Adrian da Hora de Arruda", CPF: "000.000.000-00", nascimento: DateTime.now())}");

  Professor professor2 = Professor.construtorNomeado(
      SIAPE: 5454656,
      nome: "Tome",
      CPF: "Tome",
      nascimento: DateTime.now(),
      dataEntrada: DateTime.now(),
      email: "viniciusnakahara@gmail.com",
      funcaoDoProfessor: () {
        listaDeAlunos.map((aluno) => print(
            "${aluno.nome} \n ${aluno.CPF} \n ${aluno.RA} \n ${aluno.nascimento}"));
      });

  Professor professor3 = Professor.construtorNomeado(
      SIAPE: 5454656,
      nome: "Tome",
      CPF: "Tome",
      nascimento: DateTime.now(),
      dataEntrada: DateTime.now(),
      email: "viniciusnakahara@gmail.com",
      funcaoDoProfessor: () {
        listaDeAlunos
            .where((aluno) => aluno.nome == "Felipe Adrian da Hora de Arruda")
            .map((aluno) => print(
                "${aluno.nome} \n ${aluno.CPF} \n ${aluno.RA} \n ${aluno.nascimento}"));
      });

  print(
      "${Professor(5454656, "Tome", "Tome", DateTime.now(), DateTime.now(), "viniciusnakahara@gmail.com", () {
    listaDeAlunos.map((aluno) => print(
        "${aluno.nome} \n ${aluno.CPF} \n ${aluno.RA} \n ${aluno.nascimento}"));
  }).nome} \n ${Professor(5454656, "Tome", "Tome", DateTime.now(), DateTime.now(), "viniciusnakahara@gmail.com", () {
    listaDeAlunos
        .where((aluno) => aluno.nome == "Felipe Adrian da Hora de Arruda")
        .map((aluno) => print(
            "${aluno.nome} \n ${aluno.CPF} \n ${aluno.RA} \n ${aluno.nascimento}"));
  }).nome}");

  print(professor2.nome);
  print(professor2.CPF);
  print(professor2.SIAPE);
  print(professor2.dataEntrada);
  print(professor2.email);
  print(professor2.funcaoDoProfessor);
  print("\n");

  Cliente cliente = Cliente.construtorNomeado(
    nome: "Felipe Adrian da Hora de Arruda",
    CPF: "000.000.000-00",
    nascimento: DateTime.now(),
    dataEntrada: DateTime.now(),
    email: "felipe@email",
  );

  Pedido pedido = Pedido.construtorNomeado(
    cliente: cliente,
    endereco: Endereco.construtorNomeado(
        logradouro: "logradouro",
        numero: "numero",
        bairro: "bairro",
        cidade: "cidade",
        estado: Estado("SP", "SAMPAOMEO"),
        pais: "BRASIL"),
    valor: 45.45,
    id: '1',
    produto: [Produto("1", "teste", "descreve", 45.00)],
  );
  print(pedido.cliente.toString());
  print(pedido.endereco.toString());
  print(pedido.valor);
}
