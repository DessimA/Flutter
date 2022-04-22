ESTUDANTE
nome
cpf
data de nascimento
ira
matrícula

class Estudante(){
  string Nome;
  double Cpf;
  integer Data, Matricula;

//Nome
    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

//Cpf
    public Double getCpf() {
        return cpf;
    }

    public void setCpf(Double cpf) {
        this.nome = cpf;
    }

//Data  
        public Integer getData() {
        return data;
    }

    public void setData(Integer data) {
        this.nome = data;
    }
    
//Matricula
        public Integer getMatricula() {
        return matricula;
    }

    public void setMatricula(Integer matricula) {
        this.nome = matricula;
    }
    
}

void main(){

  Estudante estudante1 = new Estudante();

  Estudante estudante2 = new Estudante();

    estudante1.setNome("Rafael");
    estudante1.setCpf("3434");
    estudante1.setData(1995);
    estudante1.setMatricula(3232);


    estudante2.setNome("Lilian");
    estudante2.setCpf(5656);
    estudante2.setData(1998);
    estudante2.setMatricula(3131);
}



DART tentar




class Aluno {

  String alunoNome;
  int alunoMatricula;
  int alunoData;
  double alunoIR;


  String get getNome {
    return alunoNome;
  }


  set setName(String nome) {
    alunoNome = nome;
  }


String get getMatricula {
    return alunoMatricula;
  }


  set setMatricula(String matricula) {
    alunoMatricula = matricula;
  }
  
String get getData {
    return alunoData;
  }


  set setData(String data) {
    alunoData = data;
  }

}

void main() {

  Aluno nome = Aluno();


  nome.setName = "renato";


  print("bem vindo ${nome.getNome}");
}


