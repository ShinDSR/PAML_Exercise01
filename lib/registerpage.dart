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
  final rePass = TextEditingController();
  
  bool Toggle = true;

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
                height: 60,
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
              Container(
                height: 20,
              ),
              Container(
                width: 300,
                height: 60,
                child: TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  controller: emailData,
                  decoration: InputDecoration(
                    labelText: 'Email',
                    hintText: 'Enter your email',
                    prefixIcon: Icon(Icons.mail),
                    labelStyle: TextStyle(
                      fontWeight: FontWeight.bold
                    )
                  ),
                ),
              ),
              Container(
                height: 20,
              ),
              Container(
                width: 300,
                height: 60,
                child: TextFormField(
                  keyboardType: TextInputType.text,
                  controller: passData,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    hintText: 'Enter your password',
                    prefixIcon: Icon(Icons.lock),
                    labelStyle: TextStyle(
                      fontWeight: FontWeight.bold
                    ),
                    suffix: InkWell(
                      onTap: (){
                        setState(() {
                          Toggle = !Toggle;
                        });
                      },
                      child: Icon(
                        Toggle ? Icons.visibility_off : Icons.visibility
                      ),
                    )
                  ),
                  validator: (value){
                    if(value!.isEmpty){
                      return 'Please enter your password';
                    }
                    else if(passData.text.length < 6){
                      return 'Password must be atleast 6 characters';
                    }
                  },
                )
              ),
              Container(
                height: 20,
              ),
              Container(
                width: 300,
                height: 60,
                child: TextFormField(
                  keyboardType: TextInputType.text,
                  controller: rePass,
                  decoration: InputDecoration(
                    labelText: 'Re-Password',
                    hintText: 'Re-Enter your password',
                    prefixIcon: Icon(Icons.lock),
                    labelStyle: TextStyle(
                      fontWeight: FontWeight.bold
                    ),
                    suffix: InkWell(
                      onTap: (){
                        setState(() {
                          Toggle = !Toggle;
                        });
                      },
                      child: Icon(
                        Toggle ? Icons.visibility : Icons.visibility_off
                      )
                    )
                  ),
                  validator: (value){
                    if(value!.isEmpty){
                      return 'Please re-enter your password';
                    }
                    else if(rePass!= passData){
                      return 'Password must be atleast 6 characters';
                    }
                  }
                ),
              ),
            ]),
          ),
        )),
    );
  }
}