import 'package:flutter/material.dart';
import 'package:projeto_ticiane/tela_comprar.dart';


class Produto extends StatelessWidget {
  const Produto({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Produto'),
      ),
      body:ButtonTheme(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Comprar()),
            );
          },
        child: Text('Entrar'), 
        )  
      )
    );
  }
}