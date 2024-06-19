import 'package:flutter/material.dart';
import 'package:projeto_flutter/map_screen.dart';

class Comprar extends StatelessWidget {
  const Comprar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Comprar'),
        iconTheme: IconThemeData(color: Colors.brown),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => MapScreen()),
            );
          },
          child: Text('Acompanhar pedido'),
        ),
      ),
    );
  }
}
