import 'package:flutter/material.dart';
// import 'package:tugas_2/i_am_rich.dart';

class kartuNama extends StatelessWidget {
  final String no, nama, status, no_telp, image;

  const kartuNama(this.no, this.nama, this.status, this.no_telp, this.image);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 60, bottom: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Anggota ' + no,
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 20,bottom: 15),
            child: CircleAvatar(
              radius: 80,
              backgroundImage: AssetImage(image),
            ),
          ),
          Text(
            nama,
            style: TextStyle(
                fontSize: 30, 
                fontWeight: FontWeight.bold, 
                color: Colors.white,
                
            ),
          ),
          Text(
            status,
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
                color: Colors.teal.shade50,
                letterSpacing: 1),
          ),
          Container(
            margin: EdgeInsets.only(top: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.only(right: 5),
                  child: Image(
                    image: AssetImage('images/icon-phone.png'),
                    width: 45,
                    height: 45,
                  ),
                ),
                Container(
                  child: Text(
                    no_telp,
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1),
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: double.infinity,
          )
        ],
      ),
    );
  }
}

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Our Fortolio',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.blueGrey[800],
          centerTitle: true,
        ),
        backgroundColor: Colors.grey.shade700,
        body: SingleChildScrollView(
          child: Column(
            children: [
              kartuNama('1', 'M. Faaizul Hakim', 'Backend Developer', '088989979157', 'images/profile.jpg'),
              kartuNama('2', 'M. Danu', 'Backend Developer', '088989979157', 'images/profile.jpg'),
              kartuNama('3', 'Maulana Arridho', 'Backend Developer','088989979157', 'images/profile.jpg')
            ],
          ),
        ),
      ),
    ),
  );
}
