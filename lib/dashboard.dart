import 'package:exercise01_paml/loginpage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.start, 
        children: <Widget>[
          Container(
            height: 100,
          ),
          const Text(
            'Pokedex.',
            style: TextStyle(
              color: Colors.red, 
              fontSize: 60, 
              fontWeight: FontWeight.bold
            ),
          ),
          Container(
            height: 50,
          ),
          const Text(
            'Welcome to Pokedex',
            style: TextStyle(
              color: Colors.brown,
              fontWeight: FontWeight.bold,
              fontSize: 15
            ),
          ),
          const Text(
            'You can find your favorite pokemon here',
            style: TextStyle(
              color: Colors.brown,
              fontWeight: FontWeight.bold,
              fontSize: 15
            ),
          ),
          Container(
            height: 150,
          ),
          Image.asset(
            'assets/images/pokeball.jpg',
            width: 100,
            height: 100,
          ),
          Container(
            height: 200,
          ),
          FloatingActionButton(
            child: Icon(Icons.arrow_forward),
            backgroundColor: Colors.cyan,
            onPressed: (){
              Navigator.pushReplacement(
                context, MaterialPageRoute(
                  builder: (context) => LoginPage()));
            },
          )
        ],
        )
      ),
    );
  }
}