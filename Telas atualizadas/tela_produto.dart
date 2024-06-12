import 'dart:collection';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:padaria_projeto/tela_comprar.dart';


class Produtos extends StatelessWidget {
  const Produtos({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Produto'),
      ),
      body:Column(
        children:<Widget>[
          Title(
            color: Colors.black, 
            child: Text('Pão de Queijo')),
          SizedBox(
            width: 200,
            height: 200,
            child:Image.asset('assets/images/pao_de_queijo.jpg'),
          ),
          const Text('Pão de queijo feito com farinha de mandioca, queijo, leite e ovo'),
          ButtonTheme(
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
        ]
      ),
    );
  }
}
