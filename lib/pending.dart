import 'package:crud_en_flutter/http/http_controller.dart';
import 'package:crud_en_flutter/model/ordem_model.dart';
import 'package:crud_en_flutter/view_ordem.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';


class Pending extends GetView<HttpController> {
  List<bool> _selections = List.generate(2, (_) => false);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pendentes'),
        backgroundColor: const Color(0xFF0161B6),
      ),

      body: controller.obx((state) {

        return ListView.builder(
          itemCount: state.length,
          itemBuilder: (_, index) {
            final OrdemModel item = state[index];
            if (item.dateClosed == 0) {
              return ListTile(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (_) => ViewOrdem(item)));
                },
                title: Text('${item.id.toString()} - ${item.iten.tipoItem}'),
                subtitle: Text(
                    'Nome do solicitante: ${item.cliente.nome.toString()}\nIniciado em: ${item.dateStart != 0 ? DateFormat('dd/MM/yyyy').format(DateTime.fromMicrosecondsSinceEpoch(item.dateStart)) : "--"} \nFechado em: ${item.dateClosed != 0 ? DateFormat('dd/MM/yyyy').format(DateTime.fromMicrosecondsSinceEpoch(item.dateClosed)) : "--"}\n'),
                leading: CircleAvatar(
                  child: Text(item.cliente.nome.substring(0, 1)),
                ),
                trailing: Icon(
                  Icons.visibility_outlined,
                  color: Colors.blueAccent,
                ),
              );
            } else {
              return SizedBox.shrink();
            }

          },
        );
      }, onError: (error) {
        return SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(error ?? ''),
              TextButton(
                onPressed: () => controller.findOrdem(),
                child: Text('Tentar novamente'),
              )
            ],
          ),
        );
      }),
    );
  }
}


