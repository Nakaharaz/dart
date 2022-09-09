import 'transporte.dart';
import 'viagem.dart';

void main() {
  // Pessoa enzo = Pessoa('Enzo', 18, true);
  // Map<String, dynamic> informacoesEnzo = enzo.toMap();
  // print(informacoesEnzo);

  Viagem viagemDeMaio = Viagem(locomocao: Transporte.skate);
  print(viagemDeMaio.consultarTotalLocaisVisitados);
  viagemDeMaio.visitar('Museu');
  print(viagemDeMaio.consultarTotalLocaisVisitados);
  viagemDeMaio.alterarLocaisVisitados = 10;
  print(viagemDeMaio.consultarTotalLocaisVisitados);
}

class Pessoa {
  String nome;
  int idade;
  bool estaAutenticada;

  Pessoa(this.nome, this.idade, this.estaAutenticada);

  Map<String, dynamic> toMap() {
    Map<String, dynamic> informacoesPessoa = {};
    informacoesPessoa['nome'] = nome;
    informacoesPessoa['idade'] = idade;
    informacoesPessoa['Está autenticada(o)?'] = estaAutenticada;
    return informacoesPessoa;
  }
}
