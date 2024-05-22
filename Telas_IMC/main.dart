import 'package:flutter/material.dart';

class CalculadoraIMC extends StatefulWidget {
  @override
  _CalculadoraIMCState createState() => _CalculadoraIMCState();
}

class _CalculadoraIMCState extends State<CalculadoraIMC> {
  final _formKey = GlobalKey<FormState>();
  final _pesoController = TextEditingController();
  final _alturaController = TextEditingController();
  double _imc = 0;


void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculadora de IMC'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            key: _formKey,
            child: Column(
              children: <Widget>[
                TextFormField(
                  controller: _pesoController,
                  decoration: InputDecoration(labelText: 'Peso (kg)'),
                  keyboardType: TextInputType.number,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Insira seu peso';
                    }
                    final peso = double.tryParse(value);
                    if (peso == null || peso <= 0) {
                      return 'Peso inválido';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 16.0),
                TextFormField(
                  controller: _alturaController,
                  decoration: InputDecoration(labelText: 'Altura (m)'),
                  keyboardType: TextInputType.number,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Insira sua altura';
                    }
                    final altura = double.tryParse(value);
                    if (altura == null || altura <= 0) {
                      return 'Altura inválida';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 32.0),
                ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      final peso = double.parse(_pesoController.text);
                      final altura = double.parse(_alturaController.text);

                      setState(() {
                        _imc = peso / (altura * altura);
                      });
                    }
                  },
                  child: Text('Calcular IMC'),
                ),
                SizedBox(height: 32.0),
                if (_imc > 0)
                  Text(
                    'Seu IMC é: ${_imc.toStringAsFixed(2)}',
                    style: TextStyle(fontSize: 24.0),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
