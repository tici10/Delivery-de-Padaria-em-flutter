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
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //ElevatedButton(
              //  onPressed: () {},
              //  child: const Text("Enviar foto"),
              //),
              const Text(
                "Pão francês", 
                style: TextStyle(
                  fontWeight: FontWeight.bold, 
                  fontSize: 18,
                ),
              ),
              const Text(
                "Farinha (100%), leite em pó (0,5%), gordura (1,5%), sal (2,2%), ácido ascórbico (0,01%), açúcar (2,5%), polissorbato 80 (0,3%), enzima alfa-amilase (0,2%) e água a 4°C, adicionada de acordo com a absorção no promilógrafo."
              ),
              const Divider(),
              const Text(
                "Preço: 2,50",
                
              )
            ],
          ),
        ),
    ); //Scaffold
  }
}
