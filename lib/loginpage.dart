import 'package:exercise01_paml/homepage.dart';
import 'package:exercise01_paml/registerpage.dart';
import 'package:flutter/material.dart';
//import 'package:flutter/src/widgets/framework.dart';
//import 'package:flutter/src/widgets/placeholder.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _logData = GlobalKey<FormState>();
  final nameData = TextEditingController();
  final passData = TextEditingController();

  bool Toggle = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
            child: Form(
                key: _logData,
                child: Column(
                  children: [
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
                          fontWeight: FontWeight.bold),
                    ),
                    Container(
                      height: 20,
                    ),
                    const Text(
                      "There's No Sense In Going On Of",
                      style: TextStyle(
                          color: Colors.blueGrey,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                    const Text(
                      'Your Way To Get Somebody To Like You',
                      style: TextStyle(
                          color: Colors.blueGrey,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                    Container(
                      height: 80,
                    ),
                    Container(
                        width: 300,
                        height: 80,
                        child: TextFormField(
                          keyboardType: TextInputType.name,
                          controller: TextEditingController(),
                          decoration: InputDecoration(
                              labelText: 'Name',
                              hintText: 'Enter your name',
                              prefixIcon: Icon(Icons.person)),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter your name';
                            }
                            return null;
                          },
                        )),
                    Container(
                      height: 30,
                    ),
                    Container(
                      width: 300,
                      height: 80,
                      child: TextFormField(
                        keyboardType: TextInputType.text,
                        obscureText: Toggle,
                        controller: TextEditingController(),
                        decoration: InputDecoration(
                            labelText: 'Password',
                            hintText: 'Enter your password',
                            prefixIcon: Icon(Icons.lock),
                            suffix: InkWell(
                              onTap: () {
                                setState(() {
                                  Toggle = !Toggle;
                                });
                              },
                              child: Icon(Toggle
                                  ? Icons.visibility_off
                                  : Icons.visibility),
                            )),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your password';
                          } else if (passData.text.length < 6) {
                            return 'Password must be atleast 6 characters';
                          }
                          return null;
                        },
                      ),
                    ),
                    Container(
                      height: 30,
                    ),
                    FilledButton(
                        child: Text(
                          'Login',
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                        onPressed: () {
                          if (_logData.currentState!.validate()) {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        HomePage(nama: nameData.text)));
                          }
                        }),
                    Container(
                      height: 20,
                    ),
                    Container(
                      width: 300,
                      height: 60,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Don't have an account?",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 148, 207, 226)),
                          ),
                          Container(
                            width: 5,
                          ),
                          TextButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => RegisterPage()));
                              },
                              child: Text(
                                'Sign Up',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromARGB(255, 8, 14, 203)),
                              ))
                        ],
                      ),
                    )
                  ],
                ))),
      ),
    );
  }
}
