import 'dart:convert';

class OrdemPausedModel {
  int id;
  String motion;

  OrdemPausedModel({
    this.id,
    this.motion,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'motion' : motion,
    };
  }

  factory OrdemPausedModel.fromMap(Map<String, dynamic> map) {
    return OrdemPausedModel(
      id: map['id'] ?? 0,
      motion: map['motion'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory OrdemPausedModel.fromJson(String source) => OrdemPausedModel.fromMap(json.decode(source));


}



