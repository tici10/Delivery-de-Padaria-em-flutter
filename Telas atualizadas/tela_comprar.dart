import 'package:flutter/material.dart';

class Comprar extends StatelessWidget {
  const Comprar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Comprar'),
        iconTheme: IconThemeData(color: Colors.brown),
      ),
    );
  }
}