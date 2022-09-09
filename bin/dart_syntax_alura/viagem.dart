import 'transporte.dart';

class Viagem {
  static String codigoTrabalho = 'AS0FUF7';
  double dinheiro = 0;
  Transporte locomocao;
  Set<String> registroVisitados = <String>{};
  Map<String, dynamic> registrarPrecos = {};

  int _locaisVisitados = 0;

  Viagem({required this.locomocao});

  printCodigo() {
    print(codigoTrabalho);
  }

  void escolherMeioTransporte(locomocao) {
    switch (locomocao) {
      case Transporte.carro:
        print('Vou de CARRO para a aventura');
        break;
      case Transporte.bike:
        print('Vou de BIKE para a aventura');
        break;
      case Transporte.skate:
        print('Vou de SKATE para a aventura');
        break;
      default:
        print('Estou indo para a aventura! Isso que importa!');
    }
  }

  void visitar(String localVisita) {
    registroVisitados.add(localVisita);
    _locaisVisitados += 1;
  }

  void registrarPrecoVisita(String local, dynamic preco) {
    registrarPrecos[local] = preco;
  }

  int get consultarTotalLocaisVisitados{
    return _locaisVisitados;
  }

  set alterarLocaisVisitados(int novaQuantidade){
    if(novaQuantidade < 10) {
    _locaisVisitados = novaQuantidade;
    } else {
      print('Não é possível visitar tudo');
    }
  }
}
