import 'dart:convert';

import 'package:crud_en_flutter/editar_ordem_start.dart';
import 'package:crud_en_flutter/model/ordem_model.dart';
import 'package:crud_en_flutter/model/ordem_start_model.dart';
import 'package:crud_en_flutter/model/response_entity.dart';
import 'package:crud_en_flutter/repository/em_andamento.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:http/http.dart' as http;
import 'package:intl/intl.dart';

import 'editar_ordem_closed.dart';

class ViewOrdem extends StatefulWidget {
  final OrdemModel _ordem;
  ViewOrdem(this._ordem);

  @override
  State<StatefulWidget> createState() => _ViewOrdem();
}

class _ViewOrdem extends State<ViewOrdem> {
  @override
  void initState() {
    OrdemModel c = widget._ordem;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF0161B6),
      ),
      body: ListView(
        children: [
          ListTile(
            title: Text('\t\n${widget._ordem.cliente.id} - ${widget._ordem.cliente.nome}'
                '\n\nEmail:${widget._ordem.cliente.email}'
                '\nEndereço:${widget._ordem.cliente.endereco}'
                '\nTelefone:\t\t${widget._ordem.cliente.fone == null ? "Não há" : widget._ordem.cliente.fone}'),
          ),
          ListTile(
            title: Text('\n\nDados da ordem:'
                '\n\nData de inicio:\t${widget._ordem.dateStart != 0 ? DateFormat('dd/MM/yyyy').format(DateTime.fromMicrosecondsSinceEpoch(widget._ordem.dateStart)) : "--"}'
                '\nData de finalização:\t${widget._ordem.dateClosed != 0 ? DateFormat('dd/MM/yyyy').format(DateTime.fromMicrosecondsSinceEpoch(widget._ordem.dateClosed)) : "--"}'
                '\nData da criação da ordem:\t${widget._ordem.dateOrdem != 0 ? DateFormat('dd/MM/yyyy').format(DateTime.fromMicrosecondsSinceEpoch(widget._ordem.dateOrdem)) : "--"}'
                '\nStatus do pedido:\t\t${widget._ordem.paussed ? "Pausado" : "Não pausado"}'
                '\nObservação:\t\t${widget._ordem.obsOrdem.toString()}'
                '\n\nMarca:\t\t${widget._ordem.iten.marca.toString()}'
                '\nTipo do item:\t\t${widget._ordem.iten.tipoItem.toString()}'
                '\nDescrição do problema:\t\t${widget._ordem.iten.problem.toString()}'),
          ),

          TextButton(
            style: ButtonStyle(
              foregroundColor: MaterialStateProperty.all<Color>(Colors.blue),
            ),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      //builder: (_) => EditarOrdemStart(widget._ordem.id)));
                      builder: (_) => EmAndamento()));
            },
            child: Text('Iniciar ordem'),
          ),

          TextButton(
            style: ButtonStyle(
              foregroundColor: MaterialStateProperty.all<Color>(Colors.red),
            ),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      //builder: (_) => EditarOrdemClosed()));
                      builder: (_) => EmAndamento()));

            },
            child: Text('Encerrar ordem'),
          ),

        ],
      ),
    );
  }
}