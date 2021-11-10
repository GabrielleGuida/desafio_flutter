import 'dart:convert';
import 'package:crud_en_flutter/model/iten_model.dart';
import 'cliente_model.dart';

class OrdemModel {
  ClienteModel cliente;
  int id;
  int dateClosed;
  int dateOrdem;
  int dateStart;
  String obsOrdem;
  bool paussed;
  ItenModel iten;

  OrdemModel({
    this.id,
    this.cliente,
    this.dateClosed,
    this.dateOrdem,
    this.dateStart,
    this.obsOrdem,
    this.paussed,
    this.iten,
  });


  Map<String, dynamic> toMap() {
    return {
      'id' : id,
      'cliente': cliente.toMap(),
      'dateClosed': dateClosed,
      'dateOrdem': dateOrdem,
      'dateStart': dateStart,
      'obsOrdem' : obsOrdem,
      'paussed' : paussed,
      'iten' : iten.toMap(),
    };
  }

  factory OrdemModel.fromMap(Map<String, dynamic> map) {
    return OrdemModel(
        id: map['id'] ?? 0,
        cliente: ClienteModel.fromMap(map['cliente']) ?? null,
        dateClosed: map['dateClosed'] ?? 0,
        dateOrdem: map['dateOrdem'] ?? 0,
        dateStart: map['dateStart'] ?? 0,
        obsOrdem : map['obsOrdem'] ?? '',
        paussed : map['paussed'] ?? false,
        iten: ItenModel.fromMap(map['iten']) ?? null,

    );
  }

  String toJson() => json.encode(toMap());

  factory OrdemModel.fromJson(String source) => OrdemModel.fromMap(json.decode(source));
}


//Na model ordem os atributos dataclosed, dateordem e datestart estão como String, porem no JSON está como int