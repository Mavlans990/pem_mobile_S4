import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home: MyApp(),
      ),
    );

// class MyApp extends StatefulWidget {
//   @override
//   State<MyApp> createState() => _MyAppState();
// }

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Our Team Profile',
          style: TextStyle(
              color: Colors.teal,
              fontWeight: FontWeight.w600,
              letterSpacing: 1),
        ),
        centerTitle: true,
        elevation: 20,
      ),
      backgroundColor: Colors.teal,
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.all(10.0),
        child: Row(
          children: [
            CardProfile(1),
            CardProfile(1),
            CardProfile(1),
          ],
        ),
      ),
    );
  }

  Widget CardProfile(int index) => Container(
      margin: EdgeInsets.all(140.0),
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 20),
            child: CircleAvatar(
              radius: 100,
              backgroundImage: AssetImage('images/profile.jpg'),
            ),
          ),
          Text(
            'Veryn',
            style: TextStyle(
                fontSize: 35.0,
                color: Colors.white,
                letterSpacing: 4,
                fontWeight: FontWeight.bold),
          ),
          Text(
            'Frontend Developer',
            style: TextStyle(
                fontSize: 20.0,
                color: Colors.grey[350],
                letterSpacing: 2.5,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 50.0,
            width: 150.0,
            child: Divider(
              color: Colors.teal.shade100,
            ),
          ),
          SizedBox(
            width: 140,
            height: 38,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                elevation: 8,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
              child: Text(
                'Click Me',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.teal,
                  letterSpacing: 1,
                ),
              ),
              onPressed: () {
                
              },
            ),
          ),
        ],
      ));
}

class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
