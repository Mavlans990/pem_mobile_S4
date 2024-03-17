import 'package:flutter/material.dart';

void main() {
  runApp(Kolom());
}

class KartuNama extends StatelessWidget {
  const KartuNama({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        body: SafeArea(
          child: Column(
            children: [
              CircleAvatar(
                radius: 100,
                backgroundImage: AssetImage('images/top.jpg'),
              ),
              Text(
                'I Gde Agung Sri Sidhimantra',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Anta'),
              ),
              Text(
                'FLUTTER DEVELOPER',
                style: TextStyle(
                    color: Colors.teal.shade100,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 3),
              ),
              Container(
                child: Row(),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class Kolom extends StatelessWidget {
  const Kolom({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 100,
                width: 200,
                color: Colors.yellow,
                child: Text('Container1'),
              ),
              Container(
                height: 100,
                width: 100,
                color: Colors.grey,
                child: Text('Container2'),
              ),
              Container(
                height: 100,
                width: 300,
                padding: EdgeInsets.all(40),
                color: Colors.black,
                child: Text(
                  'Container3',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              Container(
                width: double.infinity,
              )
            ],
          ),
        ),
      ),
    );
  }
}

class Iamrich extends StatelessWidget {
  const Iamrich({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'I Am Rich',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.blueGrey[800],
        ),
        body: Center(
          child: Image(image: AssetImage('images/diamond.png')),
        ),
        backgroundColor: Colors.white,
      ),
    );
  }
}
