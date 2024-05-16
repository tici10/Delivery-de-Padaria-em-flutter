import 'package:flutter/material.dart';

class Produto extends StatelessWidget {
  const Produto({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Produto'),
        theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      ),
    );
  }
}