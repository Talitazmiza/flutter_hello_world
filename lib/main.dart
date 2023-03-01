import 'package:flutter/material.dart';

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
      home: const MyHomePage(title: 'Talita Iza Nurazmi (3122640024) Bab 2'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 1;
  String _text = "Ganjil";

  void _percobaanSatu() {
    setState(() {
      _counter++;
      if(_counter>10) {
        _counter = 1;
      }
    });
  }

  void _percobaanDua() {
    setState(() {
      _counter++;
      if(_counter>10) {
        _counter = 1;
      }

      if(_counter%2 == 0) {
        _text = "Genap";
      } else {
        _text = "Ganjil";
      }
    });
  }

  void _percobaanTiga() {
    setState(() {
      _counter++;
      if(_counter>10) {
        _counter = 0;
      }

      _text = "Ganjil: ";
      for(int i = 0; i<=_counter; i++) {
        if(i%2 != 0) {
          _text += '${i}, ';
        }
      }
    });
  }

  void _latihan() {
    setState(() {
      _counter++;
      if(_counter>20) {
        _counter = 1;
      }

      _text = "Genap Kelipatan 3: ";
      for(int i = 1; i<=_counter; i++) {
        i%2 == 0 && i%3 == 0 ? _text += '${i}, ' : '';
      }
    });
  }

  void _tugas() {
    setState(() {
      _counter++;
      _text = "Prima: ";
      for(int i=2; i<=_counter; i++){
        String tempPrima = '';
        for(int j=2; j<=i; j++){
          if(j==i && i!=2) break;
          if(i%j == 0 && i != 2){
            tempPrima = '';
            break;
          } else {
            tempPrima = '$i ';
          }
        }
        _text += tempPrima;
      }
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
            Text(
              _text,
              style: Theme.of(context).textTheme.headline4,
            ),
            Row(
              children: [
                TextButton(onPressed: _percobaanSatu, style: TextButton.styleFrom(backgroundColor: Colors.pink), child: Text('1')),
                TextButton(onPressed: _percobaanDua, style: TextButton.styleFrom(backgroundColor: Colors.pink), child: Text('2')),
                TextButton(onPressed: _percobaanTiga, style: TextButton.styleFrom(backgroundColor: Colors.pink), child: Text('3')),
                TextButton(onPressed: _latihan, style: TextButton.styleFrom(backgroundColor: Colors.pink), child: Text('latihan')),
                TextButton(onPressed: _tugas, style: TextButton.styleFrom(backgroundColor: Colors.pink), child: Text('Tugas')),
              ],
            ),
          ],
        ),
      ),
    );

  }
}
