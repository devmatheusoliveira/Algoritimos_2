import '../grafos/rodada_de_negocios/mesa.dart';
import '../grafos/rodada_de_negocios/pessoa.dart';

List<Pessoa> criar_mesa(Pessoa cabecaDaMesa) {
  List<Pessoa> mesa = [];
  mesa.add(cabecaDaMesa);
  for (int i = 0; i <= 3; i++) {
    mesa.add(cabecaDaMesa.opcoes.first);
    cabecaDaMesa.fazerNetworking(cabecaDaMesa.opcoes.first);
  }

  return mesa;
}

void main() {
  List<Pessoa> pessoas = [
    Pessoa(nome: "João Silva"),
    Pessoa(nome: "Maria Oliveira"),
    Pessoa(nome: "José Santos"),
    Pessoa(nome: "Ana Pereira"),
    Pessoa(nome: "Carlos Almeida"),
    Pessoa(nome: "Juliana Lima"),
    Pessoa(nome: "Fernando Costa"),
    Pessoa(nome: "Gabriela Martins"),
    Pessoa(nome: "Ricardo Rocha"),
    Pessoa(nome: "Luana Souza"),
    Pessoa(nome: "Antônio Silva"),
    Pessoa(nome: "Amanda Pereira"),
    Pessoa(nome: "Daniel Oliveira"),
    Pessoa(nome: "Isabela Santos"),
    Pessoa(nome: "Eduardo Costa"),
    Pessoa(nome: "Larissa Lima"),
    Pessoa(nome: "Miguel Almeida"),
    Pessoa(nome: "Camila Rocha"),
    Pessoa(nome: "Lucas Souza"),
    Pessoa(nome: "Bianca Martins"),
  ];

  Mesa novaMesa = Mesa([]);

  for (var i = 0; i <= 3; i++) {
    novaMesa.sentarNaMesa(pessoas[i]);
  }

  for (var i = 0; i <= 3; i++) {
    print(pessoas[i]);
    print(pessoas[i].opcoes);
  }

  for (var i = 3; i < 6; i++) {
    novaMesa.sentarNaMesa(pessoas[i]);
  }

  for (var i = 0; i < 3; i++) {
    print(pessoas[i]);
    print(pessoas[i].opcoes);
  }

  // GrafoDePessoas grafoDePessoas = GrafoDePessoas();
  // for (int i = 1; i <= 3; i++) {
  //   for (int j = 1; j <= 3; j++) {
  //     List<Pessoa> lista = criar_mesa(pessoas[i]);
  //     print(lista);
  //     grafoDePessoas.conversa(lista);
  //   }
  // }

  // for (List<Pessoa> mesa in mesas) {
  //   print(mesa.first.nome);
  //   for (var element in mesa.first.opcoes) {
  //     print("\t>${element.nome}");
  //   }
  // }
}
