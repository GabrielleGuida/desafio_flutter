import 'dart:convert';

class ItenModel {
  int id;
  String marca;
  String problem;
  String tipoItem;

  ItenModel({this.id, this.marca, this.problem, this.tipoItem});

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'marca': marca,
      'problem': problem,
      'tipoItem': tipoItem,
    };
  }

  factory ItenModel.fromMap(Map<String, dynamic> map) {
    return ItenModel(
      id: map['id'] ?? 0,
      marca: map['marca'] ?? '',
      problem: map['problem'] ?? '',
      tipoItem: map['tipoItem'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory ItenModel.fromJson(String source) => ItenModel.fromMap(json.decode(source));


}



