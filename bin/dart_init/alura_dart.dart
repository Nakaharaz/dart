void main() {
  Legumes mandioca = Legumes('Mandioca', 1200, 'Marrom', true);
  Frutas banana = Frutas('Banana', 75, 'Amarela', 'Doce', 12);
  Nozes macadamia = Nozes('Macadâmia', 2, 'Branco Amarelado', 'Doce', 20, 35);
  Citricas limao = Citricas('Limão', 100, 'Verde', 'Azedo', 5, 9);

  mandioca.printAlimento();
  macadamia.printAlimento();
  limao.printAlimento();
  banana.printAlimento();

  mandioca.cozinhar();
  limao.fazerSuco();
  banana.separarIngredientes();

  macadamia.fazerMassa();
}

funcQuantosDiasMadura(int dias) {
  int diasParaMadura = 30;
  int quantosDiasfaltam = diasParaMadura - dias;
  return quantosDiasfaltam;
}

mostrarMadura(String nome, int dias, {String? cor}) {
  if (dias >= 30) {
    print("A(O) $nome está madura(o)");
  } else {
    print("A(O) $nome não está madura(o)");
  }
  if (cor != null) {
    print("A cor da(o) $nome é $cor");
  }
}

bool funcEstaMadura(int dias) {
  if (dias >= 30) {
    return true;
  } else {
    return false;
  }
}

class Alimento {
  String nome;
  double peso;
  String cor;

  Alimento(this.nome, this.peso, this.cor);

  void printAlimento() {
    print('Este(a) $nome pesa $peso gramas e é $cor');
  }
}

class Frutas extends Alimento implements Bolo {
  String sabor;
  int diasDesdeColheita;
  bool? isMadura;

  Frutas(
      String nome, double peso, String cor, this.sabor, this.diasDesdeColheita,
      {this.isMadura})
      : super(nome, peso, cor);

  void estaMadura(int diasParaMadura) {
    isMadura = diasDesdeColheita >= diasParaMadura;
    print(
        "A sua fruta $nome foi colhida à $diasDesdeColheita dias, e precisa de "
        "$diasParaMadura para estar pronta para comer. $nome está pronta para ser comida? $isMadura");
  }

  void fazerSuco() {
    print('Você fez um ótimo suco de $nome');
  }

  @override
  void separarIngredientes() {
    print('Catando o(a) @nome');
  }

  @override
  void fazerMassa() {
    print('Misturando o(a) $nome com açucar, farinha...');
  }

  @override
  void assar() {
    print('Colocando o bolo pra assar');
  }
}

class Legumes extends Alimento implements Bolo {
  bool isPrecisaCozinhar;

  Legumes(String nome, double peso, String cor, this.isPrecisaCozinhar)
      : super(nome, peso, cor);

  void cozinhar() {
    if (isPrecisaCozinhar) {
      print('Pronto, o(a) $nome está cozinhando');
    } else {
      print('Nem precisa cozinhar!');
    }
  }

  @override
  void assar() {
    // colocar mais tempo
  }

  @override
  void fazerMassa() {
    // fazer uma papa de legume
  }

  @override
  void separarIngredientes() {
    // separar ingredientes
  }
}

class Citricas extends Frutas {
  double nivelAzedo;

  Citricas(String nome, double peso, String cor, String sabor,
      int diasDesdeColheita, this.nivelAzedo)
      : super(nome, peso, cor, sabor, diasDesdeColheita);

  void existeRefri(bool existe) {
    if (existe) {
      print("Existe refri de $nome :)");
    } else {
      print("Não existe!");
    }
  }
}

class Nozes extends Frutas {
  double porcentagemDeOleonatural;

  Nozes(String nome, double peso, String cor, String sabor,
      int diasDesdeColheita, this.porcentagemDeOleonatural)
      : super(nome, peso, cor, sabor, diasDesdeColheita);

  @override
  void fazerMassa() {
    print('Retirar a casca');
    super.fazerMassa();
  }
}

abstract class Bolo {
  void separarIngredientes();

  void fazerMassa();

  void assar();
}
