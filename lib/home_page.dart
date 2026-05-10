import 'package:flutter/material.dart';

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
    return Scaffold(
      appBar: AppBar(
        title: const Text("Coel Inspect"), // Adicione um título
      ),
      body: Center(
        child: GestureDetector(
          child: Text("Contador $counter", style: TextStyle(fontSize: 44)),
          onTap: () {
            setState(() {
              counter++;
            });
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            counter++;
          });
        },
        child: Icon(Icons.add),
      ),
    );
  }
}


/*
        body: Center(
          child: GestureDetector(
            child: Text(
              "Contador $counter",
              style: TextStyle(fontSize: 44),
            ),
            onTap: (){
              setState(() {
                counter++;
              });
            },
          ),
        ),
*/