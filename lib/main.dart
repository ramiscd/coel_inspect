import 'package:flutter/material.dart';

void main() {
  runApp(
    AppWidget(
      title: "App Ramis",
    ));
}

class AppWidget extends StatelessWidget {
  final String title;

  const AppWidget({super.key, required this.title});


  @override
  Widget build(BuildContext context) {
    return MaterialApp( // 1. O "Cérebro" do app (Configurações)
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {

  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold( // 2. O "Esqueleto" da tela (Página)
        body: Center( // 3. Alinhamento
          child: GestureDetector(
            child: Text(
              "Contador $counter",
              style: TextStyle(fontSize: 44), // Estilo opcional
            ),
            onTap: (){
              setState(() {
                counter++;
              });
            },
          ),
        ),
    );
  }
}