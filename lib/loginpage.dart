import 'package:flutter/material.dart';
//import 'package:flutter/src/widgets/framework.dart';
//import 'package:flutter/src/widgets/placeholder.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Container(
          height: 80,
        ),
        Image.asset(
          'assets/images/pokemon-logo.jpg',
          width: 300,
          height: 150,
        ),
        Container(
          height: 20,
        ),
        const Text(
          "Let's get started",
          style: TextStyle(
            color: Color.fromARGB(255, 6, 25, 233),
            fontSize: 20,
            fontWeight: FontWeight.bold
          ),
        ),
        Container(
          height: 20,
        ),
        const Text("There's No Sense In Going On Of"),
        const Text('Your Way To Get Somebody To Like You')
      ],),
    );
  }
}