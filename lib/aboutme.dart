import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'bmi.dart';

class Aboutme extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueAccent,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => InputBMI()));
            },
          ),
          title: Text("Profil"),
          centerTitle: true,
        ),
        body: MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        padding: EdgeInsets.only(top: 40),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(100.100),
                    child: Image.asset('images/person.jpeg', width: 200, height: 200),
                ),
                Text(
                  "Anak Agung Ayu Suwandewi",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 25,
                    height: 2.0,
                  ),
                ),
                Text(
                  "1915051003",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 25,
                    height: 2.0,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10),
                  padding: EdgeInsets.only(top: 20, right: 20, bottom: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          ContainIcon(0, "Undiksha", Icons.school, Colors.blue[200]),
                          ContainIcon(
                              12, "action", Icons.movie, Colors.black87),
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          ContainIcon(0, "083831846453", Icons.message, Colors.green),
                          ContainIcon(12, "Gianyar",Icons.location_city, Colors.purple),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ));
  }
}

//container dari kotak yang berisi icon
class ContainIcon extends StatelessWidget {
  final double atas;
  final String isi;
  final IconData icon;
  final Color warna;
  const ContainIcon(this.atas, this.isi, this.icon, this.warna);
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: 20, top: atas),
        padding: EdgeInsets.only(top: 20),
        width: 130,
        height: 120,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(25), topRight: Radius.circular(25)),
          border: Border.all(
            width: 3,
            color: Colors.black54,
          ),
        ),
        child: Column(
          children: <Widget>[
            Icon(
              icon,
              size: 40,
              color: warna,
            ),
            Container(
              color: Colors.black54,
              margin: EdgeInsets.only(top: 24),
              width: 125,
              height: 30,
              child: TextBox(isi),
            ),
          ],
        ));
  }
}

//untuk text di dalam kotak
class TextBox extends StatelessWidget {
  final String isi;
  const TextBox(this.isi);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        isi,
        style: TextStyle(height: 1.3, fontSize: 18, color: Colors.white),
      ),
    );
  }
}
