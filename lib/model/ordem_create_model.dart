import 'dart:convert';

class OrdemCreateModel {
  String dateordem;
  int id;
  int iditem;

  OrdemCreateModel({
    this.dateordem,
    this.id,
    this.iditem,
  });

  Map<String, dynamic> toMap() {
    return {
      'dateordem' : dateordem,
      'id': id,
      'iditem' : iditem,
    };
  }

  factory OrdemCreateModel.fromMap(Map<String, dynamic> map) {
    return OrdemCreateModel(
      dateordem: map['dateordem'] ?? '',
      id: map['id'] ?? 0,
      iditem: map['iditem'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory OrdemCreateModel.fromJson(String source) => OrdemCreateModel.fromMap(json.decode(source));


}



