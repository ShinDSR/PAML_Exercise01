import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final _regData = GlobalKey<FormState>();
  final nameData = TextEditingController();
  final emailData = TextEditingController();
  final passData = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Form(
            key: _regData,
            child: Column(children: [
              Container(
                height: 80,
              ),
              Image.asset(
                'assets/images/pik-logo.jpg',
                width: 100,
                height: 100,
              ),
              Container(
                height: 50,
              ),
              const Text(
                'Register',
                style: TextStyle(
                  color: Colors.green,
                  fontSize: 25,
                  fontWeight: FontWeight.bold
                ),
              ),
              Container(
                height: 50,
              ),
              Container(
                width: 300,
                height: 50,
                child: TextFormField(
                  keyboardType: TextInputType.name,
                  controller: nameData,
                  decoration: InputDecoration(
                    labelText: 'Name',
                    hintText: 'Enter your name',
                    prefixIcon: Icon(Icons.person),
                    labelStyle: TextStyle(
                      fontWeight: FontWeight.bold
                    )
                  ),
                  validator: (value) {
                    bool valid = RegExp(
                      r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                      .hasMatch(value!);
                    if(value.isEmpty){
                      return 'Please enter your name';
                    }
                  },
                ),
              ),
              
            ]),
          ),
        )),
    );
  }
}