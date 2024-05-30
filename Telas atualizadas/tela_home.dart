import 'package:flutter/material.dart';
import 'tela_produto.dart';

class TelaHome extends StatelessWidget {
  const TelaHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(title: Text("Padaria"),
       ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Pão francês", 
                style: TextStyle(
                  fontWeight: FontWeight.bold, 
                  fontSize: 18,
                ),
              ),
              SizedBox(
                width: 200,
                height: 200,
                child: Image.asset('assets/imagens/pao_frances.jpg'),
              ),
              Divider(),
              const Text(
                "Farinha (100%), leite em pó (0,5%), gordura (1,5%), sal (2,2%), ácido ascórbico (0,01%), açúcar (2,5%), polissorbato 80 (0,3%), enzima alfa-amilase (0,2%) e água a 4°C, adicionada de acordo com a absorção no promilógrafo."
              ),
              const Divider(),
              const Text(
                "Preço: 2,50",
              ),
              Divider(),
              ButtonTheme(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Produto()),
                    );
                  },
                child: Text('Entrar'), 
                )  
              )
            ],
          ),
        ),
    ); //Scaffold
  }
}
