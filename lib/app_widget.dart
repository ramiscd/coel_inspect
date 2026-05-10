import 'package:flutter/material.dart';
import 'features/auth/screens/login_screen.dart'; // Importe a tela que criamos

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Coel Inspect',
      debugShowCheckedModeBanner: false, // Remove a faixa de debug no canto
      
      // Configuração de Tema (Visual Industrial)
      theme: ThemeData(
        primarySwatch: Colors.blue,
        useMaterial3: true,
        // Cor padrão para os botões do app
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.orange,
            foregroundColor: Colors.white,
          ),
        ),
      ),
      
      // Definindo a tela de login como a inicial
      home: const LoginScreen(),
    );
  }
}