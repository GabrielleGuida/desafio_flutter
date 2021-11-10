
import 'package:crud_en_flutter/model/ordem_start_model.dart';
import 'package:crud_en_flutter/repository/i_ordem_repository.dart';
import 'package:get/get.dart';

class HttpController extends GetxController with StateMixin {

  final IOrdemRepository _httpRepository;

  HttpController(this._httpRepository);

  @override
  void onInit() {
    super.onInit();
    findOrdem();
  }

  Future<void> findOrdem() async {
    change([], status: RxStatus.loading());
    try {
      final dados = await _httpRepository.findAllOrdem();
      change(dados, status: RxStatus.success());
    } catch (e) {
      print(e);
      change([], status: RxStatus.error('Erro ao buscar ordens'));
    }
  }

  // Future<void> editOrdem(OrdemStartModel data) async {
  //   change([], status: RxStatus.loading());
  //   try {
  //     final dados = await _httpRepository.editAllOrdem(data);
  //     change(dados, status: RxStatus.success());
  //   } catch (e) {
  //     print(e);
  //     change([], status: RxStatus.error('Erro ao salvar dados'));
  //   }
  // }
}
