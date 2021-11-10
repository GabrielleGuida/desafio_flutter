import 'dart:convert';

class OrdemStartModel {
  String datestart;
  int id;


  OrdemStartModel({
    this.id,
    this.datestart,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'datestart': datestart,
    };
  }

  factory OrdemStartModel.fromMap(Map<String, dynamic> map) {
    return OrdemStartModel(
      id: map['id'] ?? 0,
      datestart: map['datestart'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory OrdemStartModel.fromJson(String source) => OrdemStartModel.fromMap(json.decode(source));

}



