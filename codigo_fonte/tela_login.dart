import 'package:flutter/material.dart';

class Telalogin extends StatelessWidget {
  const Telalogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Login'),
    ),
    body: Padding(padding: EdgeInsets.all(20.0),
    child: LoginForm(),
    ),
  };
}

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}