void main() {
  var dataNascimento = DateTime(1990, 5, 8);
  var pessoa = Pessoa("João", dataNascimento, 1.80);

  pessoa.imprimirDados();
  print("Idade: ${pessoa.idade()} anos");

  pessoa.altura = 1.75;
  pessoa.dataNascimento = DateTime(1995, 3, 20);
  pessoa.imprimirDados();
  print("Idade: ${pessoa.idade()} anos");
}

class Pessoa {
  String _nome;
  DateTime _dataNascimento;
  double _altura;

  Pessoa(this._nome, this._dataNascimento, this._altura);

  String get nome => _nome;
  DateTime get dataNascimento => _dataNascimento;
  double get altura => _altura;

  void set nome(String nome) => _nome = nome;
  void set dataNascimento(DateTime dataNascimento) => _dataNascimento = dataNascimento;
  void set altura(double altura) => _altura = altura;

  int idade() {
    var hoje = DateTime.now();
    var idade = hoje.year - _dataNascimento.year;
    if (hoje.month < _dataNascimento.month ||
        (hoje.month == _dataNascimento.month && hoje.day < _dataNascimento.day)) {
      idade--;
    }
    return idade;
  }

  void imprimirDados() {
    print("Nome: $_nome");
    print("Data de Nascimento: ${_dataNascimento.day}/${_dataNascimento.month}/${_dataNascimento.year}");
    print("Altura: $_altura");
  }
}
