class Aluno {
  late String nome;
  late int matricula;
  late int data;
  late double ir;

  void imprimir() {
    print("Aluno " +
        nome +
        " nascido em $data" +
        " matricula $matricula e indice de rendimento $ir");
  }
}

void main() {
  Aluno aluno1 = new Aluno();
  Aluno aluno2 = new Aluno();

  aluno1.nome = "Renato";
  aluno1.data = 1998;
  aluno1.matricula = 3131;
  aluno1.ir = 8.0;

  aluno1.imprimir();

  aluno2.nome = "Marcos";
  aluno2.data = 1995;
  aluno2.matricula = 1212;
  aluno2.ir = 3.0;

  aluno2.imprimir();
}
