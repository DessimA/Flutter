import 'package:intl/intl.dart';

void main(List<String> arguments) {
  var schedule = Schedule();

  var autor1 = Autor('Adam', '123456');
  var autor2 = Autor('Simon', '789012');

  final now = DateTime.now();
  final formatter = DateFormat('dd/MM/yyyy');
  final dataLancamento = formatter.format(now);

  var livro1 = AutorLivro('Pense e enriqueça', '11111111', dataLancamento, autor1);
  var livro2 = AutorLivro('Teto para dois', '22222222', dataLancamento, autor2);
  var livro3 = CategoriaLivro('Pense e enriqueça', '33333333', dataLancamento, 'Livro de AutoAjuda');
  var livro4 = CategoriaLivro('Teto para dois', '44444444', dataLancamento, 'Livro de Romance');

  schedule.addLivro(livro1);
  schedule.addLivro(livro2);

  schedule.addLivro(livro3);
  schedule.addLivro(livro4);

  schedule.deleteLivro(livro4);

  schedule.buscarTodosLivros();

  schedule.buscarLivro(livro1);
  schedule.buscarLivro(livro4);
}

abstract class Livro {
  String titulo;
  String isbn;
  String dataLancamento;

  Livro(this.titulo, this.isbn, this.dataLancamento);
}

class CategoriaLivro extends Livro {
  String categoria;

  CategoriaLivro(String titulo, String isbn, String dataLancamento, this.categoria) : super(titulo, isbn, dataLancamento);
}

class AutorLivro extends Livro {
  Autor autor;

  AutorLivro(String titulo, String isbn, String dataLancamento, this.autor) : super(titulo, isbn, dataLancamento);
}

class Autor {
  String autorNome;
  String cpf;
  

  Autor(this.autorNome, this.cpf);
}

class Schedule {
  List<AutorLivro> livroalLivros = [];
  List<CategoriaLivro> categoriaLivros = [];

  void addLivro(Livro livro) {
    if (livro is AutorLivro) {
      livroalLivros.add(livro);
    }
    
    if (livro is CategoriaLivro) {
      categoriaLivros.add(livro);
    }
  }

  void deleteLivro(Livro livro) {
    if (livro is AutorLivro) {
      livroalLivros.remove(livro);
    }
    
    if (livro is CategoriaLivro) {
      categoriaLivros.remove(livro);
    }
  }

  void buscarTodosLivros() {
    print('Livro por autor:');
    livroalLivros.forEach((livro) => {
      print('${livro.titulo} - ${livro.isbn} - ${livro.dataLancamento} - ${livro.autor.autorNome} - ${livro.autor.cpf}')
    });
    print('---------------\n');

    print('Livro por categoria:');
    categoriaLivros.forEach((livro) => {
      print('${livro.titulo} - ${livro.isbn} - ${livro.dataLancamento} - ${livro.categoria}')
    });
    print('---------------\n\n\n');
  }

  void buscarLivro(Livro livro) {
    var livroEncontrado = false;

    if (livro is AutorLivro) {
      if (livroalLivros.contains(livro)) {
        livroEncontrado = true;
      }
    }
    
    if (livro is CategoriaLivro) {
      
      if (categoriaLivros.contains(livro)) {
        livroEncontrado = true;
      }
    }

    if (livroEncontrado) {
      print('O livro existe no acervo!');
    } else {
      print('O livro não existe no acervo.');
    }
  }
}
