import 'dart:io';
import 'dart:ui' show lerpDouble;
import 'package:crud_en_flutter/http/http_bindings.dart';
import 'package:crud_en_flutter/view_ordem.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'login.dart';
import 'my_home_page.dart';

void main() {
  HttpOverrides.global = new MyHttpOverrides();
  runApp(Main());
}


class Main extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      getPages: [
          GetPage(
              name: '/', 
              page: () => MyApp(),
              binding: HttpBindings(),

          )
      ],
    );
  }
}


class MyHttpOverrides extends HttpOverrides{
  @override
  HttpClient createHttpClient(SecurityContext context){
    return super.createHttpClient(context)
      ..badCertificateCallback = (X509Certificate cert, String host, int port)=> true;
  }
}