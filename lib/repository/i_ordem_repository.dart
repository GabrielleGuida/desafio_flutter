
import 'package:crud_en_flutter/model/ordem_model.dart';
import 'package:crud_en_flutter/model/ordem_start_model.dart';
import 'package:crud_en_flutter/model/response_entity.dart';

abstract class IOrdemRepository {
  Future<List<OrdemModel>> findAllOrdem();
  //Future<ResponseEntity> editAllOrdem(OrdemStartModel data);
}