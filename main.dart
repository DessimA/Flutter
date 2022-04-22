class Aluno {

late String _nome;

  String get nome => _nome;

  set nome(String nome) {
    _nome = nome;
  } 
late int _matricula;

  int get matricula => _matricula;

  set matricula(int matricula) {
    _matricula = matricula;
  }
late int _data;

  int get data => _data;

  set data(int data) {
    _data = data;
  }
late double _ir;

  double get ir => _ir;

  set ir(double ir) {
    _ir = ir;
  }

 

}

void main() {
  
  Aluno aluno = new Aluno();

  aluno._nome = "Renato";
  aluno._data = 1998;
  aluno._matricula = 31;
  aluno._ir = 8.1;

  print("Nome:"+aluno._nome);
  print("Data de Nascimento:"+ aluno._ir);
 
 
}

