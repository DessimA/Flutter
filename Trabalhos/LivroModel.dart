import 'Autor.dart';
import 'Categoria.dart';

abstract class Livro {
  late String _titulo;
  late String _isbn;
  late String _lancamentoData;
  late double _preco;
  late List<Autor> autor;
  late List<Categoria> categoria;

  

  Livro() {}

  String get titulo => this._titulo;

  set titulo(String value) => this._titulo = value;

  get isbn => this._isbn;

  set isbn(value) => this._isbn = value;

  get lancamentoData => this._lancamentoData;

  set lancamentoData(value) => this._lancamentoData = value;

  get preco => this._preco;

  set preco(value) => this._preco = value;

  void aplicarDesconto(double _preco) {
    _preco -= (_preco * 0.2);
  }
}
