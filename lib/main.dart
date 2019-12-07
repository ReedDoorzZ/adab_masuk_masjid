import 'package:flutter/material.dart';

import 'About.dart';
import 'TampilAdab.dart';

void main() => runApp(MasukMasjid());

class MasukMasjid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.grey,
          primaryColor: Colors.white,
          canvasColor: Colors.white,
          appBarTheme: AppBarTheme(color: Colors.white, elevation: 3.0)),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.assignment_late),
            onPressed: () {
              openNewScreen(context, About());
            },
          ),
          SizedBox(
            width: 20.0,
          )
        ],
      ),
      body: Container(
        child: ListView(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 30.0, top: 20.0),
              child: Text("Tuntunan",
                  style:
                      TextStyle(fontSize: 40.0, fontWeight: FontWeight.w800)),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30.0, top: 5.0),
              child: Text("Haji & Umroh",
                  style:
                      TextStyle(fontSize: 30.0, fontWeight: FontWeight.w400)),
            ),
            SizedBox(
              height: 20.0,
            ),
            GestureDetector(
              onTap: () {
                openNewScreen(context, TampilAdab());
              },
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 15.0),
                height: 250.0,
                child: Stack(
                  children: <Widget>[
                    backgroundImage(
                        "https://www.madaninews.id/wp-content/uploads/2018/08/aurat-lelaki-dan-wanita.jpg"),
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Text(
                          "Rukun Puasa",
                          style: teksgaya,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  var teksgaya = TextStyle(
    fontSize: 35.0,
    color: Colors.white,
    fontFamily: 'Raleway',
    fontWeight: FontWeight.bold,
  );

  backgroundImage(String imageURL) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        image: DecorationImage(
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
                Colors.black.withOpacity(0.5), BlendMode.darken),
            image: NetworkImage(imageURL)),
      ),
    );
  }

  void openNewScreen(BuildContext context, Widget screen) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => screen));
  }
}
