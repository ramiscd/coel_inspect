import 'package:flutter/material.dart';
import 'app_widget.dart';

void main() async {
  // Garante que os bindings do Flutter estejam prontos antes de iniciar serviços
  WidgetsFlutterBinding.ensureInitialized();
  
  // No futuro, a inicialização do Firebase entrará aqui:
  // await Firebase.initializeApp();

  runApp(const AppWidget());
}