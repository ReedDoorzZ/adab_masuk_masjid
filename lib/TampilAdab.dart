import 'package:flutter/material.dart';

void main() => runApp(TampilAdab());

class TampilAdab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Adab Berpakaian"),
          centerTitle: true,
        ),
        body: FirstScreen(),
      ),
    );
  }
}

class FirstScreen extends StatefulWidget {
  @override
  _FirstScreenState createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  List<String> textindo = [
    "Masuk dengan membaca doa.",
    "Masuk kemasjid menggunakan kaki kanan"
        "Tidak ngobrol ketika dimasjid.",
    "Membaca alquran.",
    "Duduk sila dengan rapih atau tidak selonjoran.",
    "Memakai pakaian yg rapih dan bersih.",
    "Memakai minyak wangi.",
    "Keluar kemasjid menggunakan kaki kiri."
        "Dan jangan lupa membaca doa keluar masjid"
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: textindo.length,
        itemBuilder: (BuildContext context, int posisi) {
          return Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10.0),
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: <Widget>[
                    Text(posisi.toString()),
                    Text(textindo[posisi])
                  ],
                ),
              ),
            ),
          );
        });
  }
}
