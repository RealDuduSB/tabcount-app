import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
    debugShowCheckedModeBanner: false,
  ));
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _peopleum = 0;
  int _peopledois = 0;
  int _peopletres = 0;
  int _peoplequatro = 0;

  void _changePeopleum(int delta) {
    setState(() {
      _peopleum += delta;

      if (_peopleum < 0) {
        _peopleum = 0;
      }
    });
  }

  void _changePeopledois(int delta) {
    setState(() {
      _peopledois += delta;
      if (_peopledois < 0) {
        _peopledois = 0;
      }
    });
  }

  void _changePeopletres(int delta) {
    setState(() {
      _peopletres += delta;

      if (_peopletres < 0) {
        _peopletres = 0;
      }
    });
  }

  void _changePeoplequatro(int delta) {
    setState(() {
      _peoplequatro += delta;

      if (_peoplequatro < 0) {
        _peoplequatro = 0;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text("user@mail.com"),
              accountEmail: Text("Eduardo"),
              currentAccountPicture: CircleAvatar(
                child: Text(
                  "Eduardo",
                  style: TextStyle(color: Colors.black),
                ),
                backgroundColor: Colors.white,
              ),
              decoration: BoxDecoration(
                color: Colors.black,
              ),
            ),
            ListTile(
              leading: Icon(Icons.home, color: Colors.black),
              title: Text("Inicio"),
            ),
            ListTile(
              leading: Icon(Icons.account_circle, color: Colors.black),
              title: Text("Minha conta"),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "CONTAGEM SULFATO FERROSO E ACIDO FOLICO",
          style: TextStyle(fontSize: 30, color: Colors.white),
        ),
        backgroundColor: Colors.black,
      ),
      body: ListView(
        children: <Widget>[
          Container(
            child: Table(
              children: [
                TableRow(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      height: 50,
                      color: Colors.white,
                      child: Text(""),
                    ),
                    Container(
                      alignment: Alignment.center,
                      height: 50,
                      color: Colors.blueGrey,
                      child: Text("Sulfato ferroso",
                          style: GoogleFonts.lato(fontSize: 25)),
                    ),
                    Container(
                      alignment: Alignment.center,
                      height: 50,
                      color: Colors.blueGrey,
                      child: Text("Acido folico",
                          style: GoogleFonts.lato(fontSize: 25)),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      height: 50,
                      color: Colors.grey,
                      child: Text("Gestantes",
                          style: GoogleFonts.lato(fontSize: 25)),
                    ),
                    Container(
                      alignment: Alignment.center,
                      height: 50,
                      color: Colors.blueGrey,
                      child: Text("$_peopleum",
                          style: GoogleFonts.lato(fontSize: 25)),
                    ),
                    Container(
                      alignment: Alignment.center,
                      height: 50,
                      color: Colors.blueGrey,
                      child: Text("$_peopledois",
                          style: GoogleFonts.lato(fontSize: 25)),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      height: 50,
                      color: Colors.grey,
                      child: Text("Crianças de 6 meses a 2 anos de idade",
                          style: GoogleFonts.lato(fontSize: 25)),
                    ),
                    Container(
                      alignment: Alignment.center,
                      height: 50,
                      color: Colors.blueGrey,
                      child: Text("$_peopletres",
                          style: GoogleFonts.lato(fontSize: 25)),
                    ),
                    Container(
                      alignment: Alignment.center,
                      height: 50,
                      color: Colors.blueGrey,
                      child: Text("$_peoplequatro",
                          style: GoogleFonts.lato(fontSize: 25)),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("Sulfato ferroso para gestante:",
                  style: TextStyle(fontSize: 20.0, color: Colors.black)),
              Padding(
                padding: EdgeInsets.all(20.0),
                child: TextButton(
                  child: Text(
                    "+1",
                    style: TextStyle(fontSize: 20.0, color: Colors.black),
                  ),
                  onPressed: () {
                    _changePeopleum(1);
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.all(20.0),
                child: TextButton(
                  child: Text(
                    "-1",
                    style: TextStyle(fontSize: 20.0, color: Colors.black),
                  ),
                  onPressed: () {
                    _changePeopleum(-1);
                  },
                ),
              ),
              Text("acido folico para gestante:",
                  style: TextStyle(fontSize: 20.0, color: Colors.black)),
              Padding(
                padding: EdgeInsets.all(20.0),
                child: TextButton(
                  child: Text(
                    "+1",
                    style: TextStyle(fontSize: 20.0, color: Colors.black),
                  ),
                  onPressed: () {
                    _changePeopledois(1);
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.all(20.0),
                child: TextButton(
                  child: Text(
                    "-1",
                    style: TextStyle(fontSize: 20.0, color: Colors.black),
                  ),
                  onPressed: () {
                    _changePeopledois(-1);
                  },
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Sulfato ferroso para criança:",
                  style: TextStyle(fontSize: 20.0, color: Colors.black)),
              Padding(
                padding: EdgeInsets.all(20.0),
                child: TextButton(
                  child: Text(
                    "+1",
                    style: TextStyle(fontSize: 20.0, color: Colors.black),
                  ),
                  onPressed: () {
                    _changePeopletres(1);
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.all(20.0),
                child: TextButton(
                  child: Text(
                    "-1",
                    style: TextStyle(fontSize: 20.0, color: Colors.black),
                  ),
                  onPressed: () {
                    _changePeopletres(-1);
                  },
                ),
              ),
              Text("Acido folico para criança:",
                  style: TextStyle(fontSize: 20.0, color: Colors.black)),
              Padding(
                padding: EdgeInsets.all(20.0),
                child: TextButton(
                  child: Text(
                    "+1",
                    style: TextStyle(fontSize: 20.0, color: Colors.black),
                  ),
                  onPressed: () {
                    _changePeoplequatro(1);
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.all(20.0),
                child: TextButton(
                  child: Text(
                    "-1",
                    style: TextStyle(fontSize: 20.0, color: Colors.black),
                  ),
                  onPressed: () {
                    _changePeoplequatro(-1);
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
