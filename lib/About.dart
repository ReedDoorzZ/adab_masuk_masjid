import 'package:flutter/material.dart';

void main() => runApp(About());

class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("About"),
      ),
      body: PageView(
        children: <Widget>[
          _createPageSyarat("Design",
              "Aplikasi ini menampilkan design yg sangat simple, untuk mempermudah pengguna untuk menggunakan aplikasi ini."),
          _createPageSyarat("Pembahasan",
              "Aplikasi ini menampilkan kumpulan kumpulan pembahasaan tuntunan puasa menggunakan website website yg inshaallah berguna dan bagus sesuai ajaran islam."),
        ],
      ),
    );
  }

  Widget _createPageSyarat(String nama, String desc) {
    return Container(
      child: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text(nama,
                style: TextStyle(fontSize: 28.0, fontWeight: FontWeight.bold)),
          ),
          Divider(
            thickness: 4.0,
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              desc,
              style: TextStyle(
                fontSize: 20.0,
              ),
              textAlign: TextAlign.justify,
            ),
          ),
        ],
      ),
    );
  }
}
