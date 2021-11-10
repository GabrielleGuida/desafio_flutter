
import 'package:crud_en_flutter/repository/i_ordem_repository.dart';
import 'package:get/get.dart';

import 'ordem_http_repository.dart';
import 'http_controller.dart';

class HttpBindings implements Bindings {
  @override
  void dependencies() {
    Get.put<IOrdemRepository>(OrdemHttpRepository());
    Get.put(HttpController(Get.find()));
  }
}
