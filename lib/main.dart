import 'package:flutter/material.dart';
// import 'package:flutter_hello_world/detail_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const DetailScreen(),
    );
  }
}

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key}) : super(key:key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget> [
            Image.asset('assets/images/submarine_1.jpg'),
            Container(
              margin: EdgeInsets.only(top: 16.0),
              child: Text(
                "Surabaya Submarine Monument",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Lobster',
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
          ), // Container judul
            Container(
              margin: const EdgeInsets.symmetric(vertical: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Column(
                    children: const <Widget>[
                      Icon(Icons.calendar_today),
                      Text('Open Everyday'),
                    ],
                  ),
                  Column(
                    children: const <Widget>[
                      Icon(Icons.punch_clock_outlined),
                      Text('08:00 - 16:00'),
                    ],
                  ),
                  Column(
                    children: const <Widget>[
                      Icon(Icons.attach_money),
                      Text('Rp 10.000,-'),
                    ],
                  )
                ],
              ),
            ), // Container icons
            Container(
              padding: const EdgeInsets.all(16.0),
              child: const Text(
                'Imágenes libres de regalías de Museum inside a decommissioned russian war submarine with tours & an adjacent park with cafes',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontFamily: 'Oxygen',
                    fontSize: 16.0
                ),
              ),
            ), // Container deskripsi
            Container(
              height: 150,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(30.0),
                        child: Container(
                          alignment: Alignment.center,
                          constraints: const BoxConstraints(
                            maxHeight: 100,
                            maxWidth: 150,
                          ),
                          color: Colors.pink,
                          child: Image.asset('assets/images/submarine_1.jpg'),
                        ),
                      ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(30.0),
                      child: Container(
                        alignment: Alignment.center,
                        constraints: const BoxConstraints(
                          maxHeight: 100,
                          maxWidth: 150,
                        ),
                        color: Colors.black,
                        child: Image.network('https://upload.wikimedia.org/wikipedia/commons/6/60/Submarine_Monument_Surabaya_2.JPG'),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(30.0),
                      child: Container(
                        alignment: Alignment.center,
                        constraints: const BoxConstraints(
                          maxHeight: 100,
                          maxWidth: 150,
                        ),
                        color: Colors.pink,
                        child: Image.asset('assets/images/submarine_1.jpg'),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(30.0),
                      child: Container(
                        alignment: Alignment.center,
                        constraints: const BoxConstraints(
                          maxHeight: 100,
                          maxWidth: 150,
                        ),
                        color: Colors.black,
                        child: Image.network('https://upload.wikimedia.org/wikipedia/commons/6/60/Submarine_Monument_Surabaya_2.JPG'),
                      ),
                    ),
                  ),
                ],
              ),
            ), // Container images
        ],
      ),)
    );
  }
}
