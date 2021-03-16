import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:reg_perguntas/app/pages/home_page/home_page.dart';

class AppWidget extends StatelessWidget {

 @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Registrar Perguntas',
      theme: ThemeData.dark(),
      home: HomePage(),
    );
  }
}