import 'package:flutter/material.dart';
//import 'package:flutter/src/widgets/framework.dart';
//import 'package:flutter/src/widgets/placeholder.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  bool eyeToggle = true;

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
        const Text('Your Way To Get Somebody To Like You'),
        Container(
          height: 40,
        ),
        TextFormField(
          keyboardType: TextInputType.name,
          controller: TextEditingController(),
          decoration: InputDecoration(
            labelText: 'Nama',
            hintText: 'Enter your name',
            prefixIcon: Icon(Icons.person)
          ),
        ),
        Container(
          height: 40,
        ),
        TextFormField(
          keyboardType: TextInputType.text,
          obscureText: eyeToggle,
          controller: TextEditingController(),
          decoration: InputDecoration(
            labelText: 'Password',
            hintText: 'Enter your password',
            prefixIcon: Icon(Icons.lock),
            suffix: InkWell(
              onTap: (){
                setState(() {
                  eyeToggle = !eyeToggle;
                });
              },
              child: Icon(
                eyeToggle ? Icons.visibility : Icons.visibility_off
              ),
            )
          ),
        ),
      ],
      ),
    );
  }
}