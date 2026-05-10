import 'package:flutter/material.dart';
import 'core/theme/app_theme.dart';
import 'features/auth/screens/login_screen.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Coel Inspect',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.light, // Aplicando o tema que acabamos de criar
      home: const LoginScreen(),
    );
  }
}