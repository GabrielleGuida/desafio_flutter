import 'dart:convert';
import 'package:crud_en_flutter/model/ordem_model.dart';
import 'package:crud_en_flutter/repository/i_ordem_repository.dart';
import 'package:http/http.dart' as http;

class OrdemHttpRepository implements IOrdemRepository {
  
  @override
  Future<List<OrdemModel>> findAllOrdem() async {
    try {
      final response = await http.get(Uri.parse('https://desafio.sigacred.com.br/v1/ordens'));
      final List<dynamic> responseMap = jsonDecode(response.body);
      return responseMap.map<OrdemModel>((resp) => OrdemModel.fromMap(resp)).toList();
    } catch (e) {
      print(e);
      rethrow;
    }
  }
  
}