import 'dart:convert';

class OrdemClosedModel {
  String obsOrdem;
  int id;


  OrdemClosedModel({
    this.id,
    this.obsOrdem,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'obsOrdem': obsOrdem,
    };
  }

  factory OrdemClosedModel.fromMap(Map<String, dynamic> map) {
    return OrdemClosedModel(
      id: map['id'] ?? 0,
      obsOrdem: map['obsordem'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory OrdemClosedModel.fromJson(String source) => OrdemClosedModel.fromMap(json.decode(source));

}
