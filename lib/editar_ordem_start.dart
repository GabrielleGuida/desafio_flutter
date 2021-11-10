import 'package:crud_en_flutter/http/http_controller.dart';
import 'package:crud_en_flutter/model/ordem_model.dart';
import 'package:crud_en_flutter/model/ordem_start_model.dart';
import 'package:crud_en_flutter/view_ordem.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';


class EditarOrdemStart extends GetView<HttpController> {
  final int _id;
  EditarOrdemStart(this._id);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF0161B6),
        title: Text("Iniciar ordem de serviço"),
      ),
      body: ListView(
        children: [
          TextButton(
            style: ButtonStyle(
              foregroundColor: MaterialStateProperty.all<Color>(Colors.red),
            ),
            onPressed: () {
              OrdemStartModel data = new OrdemStartModel(id: 1, datestart: '2021-11-10T12:22:17.801Z');
              print(data.id);
              print(data.datestart);
              //controller.startOrdem(data);
            },
            child: Text('Enviar'),
          ),
        ]
      )
    );
  }
}


