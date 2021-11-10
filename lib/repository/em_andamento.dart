import 'package:crud_en_flutter/http/http_controller.dart';
import 'package:crud_en_flutter/model/ordem_model.dart';
import 'package:crud_en_flutter/model/ordem_start_model.dart';
import 'package:crud_en_flutter/view_ordem.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';


class EmAndamento extends GetView<HttpController> {
  EmAndamento();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF0161B6),
        title: Text("Pagina em Criação"),
      ),
      body: ListView(
        children: [
          ListTile(
              title: Text("Desculpe, essa pagina ainda não esta pronta!"),
          ),
        ]
      )
    );
  }
}


