import 'dart:convert';

class ClienteModel {
  String email;
  String endereco;
  String fone;
  int id;
  String nome;

  ClienteModel({this.email, this.endereco, this.fone, this.id, this.nome});

  Map<String, dynamic> toMap() {
    return {
      'email': email,
      'endereco' : endereco,
      'fone' : fone,
      'id': id,
      'nome' : nome,
    };
  }

  factory ClienteModel.fromMap(Map<String, dynamic> map) {
    return ClienteModel(
      email: map['email'] ?? '',
      endereco: map['endereco'] ?? '',
      fone: map['fone'] ?? '',
      id: map['id'] ?? 0,
      nome: map['nome'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory ClienteModel.fromJson(String source) => ClienteModel.fromMap(json.decode(source));
}



