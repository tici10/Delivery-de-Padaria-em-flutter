import "package:flutter/material.dart";

class Primeiratela extends StatelessWidget {
  const Primeiratela({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Padaria")),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            print("Foi clicado!");
          },
          child: Icon(Icons.add),
        ),
        body: ElevatedButton(
          onPressed: () {},
          child: Text("Enviar foto"),
        )); //Scaffold
  }
}
