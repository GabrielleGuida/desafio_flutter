import 'dart:convert';

class OrdemHistoryModel {
  String ordem;
  int id;
  String motion;

  OrdemHistoryModel({
    this.ordem,
    this.id,
    this.motion,
  });

  Map<String, dynamic> toMap() {
    return {
      'ordem' : ordem,
      'id': id,
      'motion' : motion,
    };
  }

  factory OrdemHistoryModel.fromMap(Map<String, dynamic> map) {
    return OrdemHistoryModel(
      ordem: map['ordem'] ?? '',
      id: map['id'] ?? 0,
      motion: map['motion'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory OrdemHistoryModel.fromJson(String source) => OrdemHistoryModel.fromMap(json.decode(source));

}



