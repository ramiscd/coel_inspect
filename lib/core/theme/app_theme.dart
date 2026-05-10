import 'package:flutter/material.dart';

class AppTheme {
  // Cores baseadas na identidade visual da Coel
  static const Color coelBlue = Color(0xFF003366); 
  static const Color coelOrange = Color(0xFFFF8000);
  static const Color backgroundGrey = Color(0xFFF5F5F5);

  static ThemeData get light {
    return ThemeData(
      useMaterial3: true,
      colorScheme: ColorScheme.fromSeed(
        seedColor: coelBlue,
        primary: coelBlue,
        secondary: coelOrange,
      ),
      scaffoldBackgroundColor: backgroundGrey,
      
      // Estilo da AppBar (Presente em quase todas as suas telas)
      appBarTheme: const AppBarTheme(
        backgroundColor: coelBlue,
        foregroundColor: Colors.white,
        centerTitle: true,
        elevation: 0,
      ),

      // Estilo dos Botões (O laranja das suas telas 1, 2 e 5)
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: coelOrange,
          foregroundColor: Colors.white,
          minimumSize: const Size(double.infinity, 50),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          textStyle: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),

      // Estilo dos campos de texto (Industrial/Limpo)
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: Colors.white,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(color: coelBlue, width: 2),
        ),
      ),
    );
  }
}