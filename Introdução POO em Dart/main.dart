class Aluno {
  late String nome;
  late int matricula;
  late int data;
  late double ir;

  Aluno(this.nome, this.matricula, this.data, this.ir);

  void imprimir() {
    print("Aluno " +
        nome +
        " nascido em $data" +
        " matricula $matricula e indice de rendimento $ir");
  }
}

void main() {
  Aluno aluno1 = new Aluno("Renato", 3131, 1998, 8.0);
  Aluno aluno2 = new Aluno("Marcos", 1212, 1995, 3.0);

  aluno1.imprimir();
  aluno2.imprimir();
}
