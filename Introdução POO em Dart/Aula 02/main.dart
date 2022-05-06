//LISTA=====================================================================
class Lista {}

//CALCULADORA===============================================================

class Calculadora {
  String _cor;
  String _marca;
  int numeroDeOperacoes;

  Calculadora(this._marca, this._cor, this.numeroDeOperacoes);

  void imprimirCalculadora() {
    print(
        "A calculadora é da marca $_marca da cor $_cor e faz $numeroDeOperacoes operações");
  }

  void calculadoraSoma(double a, double b) {
    double soma = a + b;

    print("A soma dos dois números é igual a $soma");
  }

  void calculadoraSubtrair(double a, double b) {
    double subtracao = a - b;

    print("A subtração dos dois números é igual a $subtracao");
  }

  void calculadoraMultiplicar(double a, double b) {
    double multiplicacao = a * b;

    print("A multiplicação dos dois números é igual a $multiplicacao");
  }

  void calculadoraDivisao(double a, double b) {
    double divisao = a / b;

    print("A divisao dos dois números é igual a $divisao");
  }
}

//VEICULO====================================================================

class Veiculo {
  String _marca;
  int _numeroPortas;
  double _preco;
  String _cor;

  Veiculo(this._marca, this._numeroPortas, this._preco, this._cor);

  void acelerar() {
    print("Estou acelerando");
  }

  void imprimirVeiculo() {
    print(
        "O carro é da marca $_marca possui $_numeroPortas portas custa $_preco e é da $_cor");
  }
}

//MAIN======================================================================
void main() {
  Veiculo carroEduardo = new Veiculo("Fiat", 2, 5000, "Branco");

  //Calculadora calculadora = new Calculadora("ELGIN", "azul", 4);

  var listaQueridosAlunos = [];
  listaQueridosAlunos.add("Eduardo");
  listaQueridosAlunos.add("Kevin");
  listaQueridosAlunos.add("Julio");
  listaQueridosAlunos.add("Lilian");
  listaQueridosAlunos.add("Ana Mires");
  listaQueridosAlunos.add(carroEduardo);

  //listaQueridosAlunos.remove("Julio");
  //listaQueridosAlunos.removeAt(3);

  print(listaQueridosAlunos);
  print("O tamanho da lista é ${listaQueridosAlunos.length}");
/* 
  carroEduardo.imprimirVeiculo();
  carroEduardo.acelerar();

  calculadora.imprimirCalculadora();
  calculadora.calculadoraSoma(5, 4);
  calculadora.calculadoraSubtrair(4, 2);
  calculadora.calculadoraMultiplicar(7, 5);
  calculadora.calculadoraDivisao(8, 1); */
}
