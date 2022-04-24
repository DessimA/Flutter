class Aluno {
  String _nome;
  int _matricula;
  int _data;
  double _ir;

  Aluno(this._nome, this._matricula, this._data, this._ir);

  String get nome => _nome;
  set nome(String nome) {
    _nome = nome;
  }

  int get matricula => _matricula;
  set matricula(int matricula) {
    _matricula = matricula;
  }

  int get data => _data;
  set data(int data) {
    _data = data;
  }

  double get ir => _ir;
  set ir(double ir) {
    _ir = ir;
  }

  void imprimir() {
    print("Aluno " +
        _nome +
        " nascido em $_data" +
        " matricula $_matricula e indice de rendimento $_ir");
  }
}

void main() {
  Aluno aluno1 = new Aluno("Leo", 3131, 1998, 8.0);
  Aluno aluno2 = new Aluno("Marcos", 1212, 1995, 3.0);

  aluno1.imprimir();
  aluno2.imprimir();
}
