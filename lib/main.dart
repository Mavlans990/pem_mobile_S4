import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home: MyApp(),
      ),
    );

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      title: Text(
        'Our Team Profile',
        style: TextStyle(
          color: Colors.black87,
          fontWeight: FontWeight.w700,
          fontFamily: 'Source Sans Pro',
          letterSpacing: 1,
        ),
      ),
      backgroundColor: Colors.white,
      centerTitle: true,
      // elevation: 20,
    ),
      backgroundColor: Colors.blue[50],
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.all(10.0),
        child: Center(
          child: Row(
            
            children: [
              CardProfile('M. Faaizul Hakim', '088989979157', '22091397075', '4.png'),
              CardProfile('M. Danu', '088989979158', '22091397002', '3.png'),
              CardProfile('Maulana Arridho', '088989979159', '22091397088', '1.png'),
            ],
          ),
        ),
      ),
    );
  }

  Widget CardProfile(nama, no_telp, nim, image) => 
    Container(
      // width: double.infinity,
      height: 500,
      margin: EdgeInsets.only(left: 18, right: 18),
      child: Card(
        color: Colors.blue[400],
        child: Padding(
          padding: EdgeInsets.only(top: 30, right: 30, left: 30),
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(bottom: 20),
                child: CircleAvatar(
                  radius: 100,
                  backgroundImage: AssetImage('images/$image'),
                ),
              ),
              Text(
                '$nama',
                style: TextStyle(
                    fontSize: 30.0,
                    fontFamily: 'Source Sans Pro',
                    color: Colors.white,
                    letterSpacing: 2,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                'Frontend Developer',
                style: TextStyle(
                    fontSize: 18.0,
                    fontFamily: 'Source Sans Pro',
                    color: Colors.grey[200],
                    letterSpacing: 2.5,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                width: 150.0,
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 10),
                    ),
                    Divider(
                      color: Colors.teal.shade100,
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 12),
                    ),
                  ],
                ),
              ),
              Text(
                '$no_telp | email@mhs.unesa',
                style: TextStyle(
                    fontSize: 15.0,
                    fontFamily: 'Source Sans Pro',
                    color: Colors.grey[200],
                    letterSpacing: 1.1,
                    fontWeight: FontWeight.normal),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 15),
              ),
              Text(
                'Merupakan mahasiswa Semester 4 \ndi Prodi D4 Manajemen Informatika \ndengan NIM $nim \ndi Universitas Negeri Surabaya',
                style: TextStyle(
                    fontSize: 16.0,
                    fontFamily: 'Source Sans Pro',
                    color: Colors.grey[200],
                    letterSpacing: 1,
                    fontWeight: FontWeight.normal),
              ),
            ],
          )
        ),
      )
    );
}