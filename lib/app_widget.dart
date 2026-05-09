import 'package:coel_inspect/home_page.dart';
import 'package:flutter/material.dart';

class AppWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp( // 1. O "Cérebro" do app (Configurações)
      home: HomePage(),
    );
  }
}