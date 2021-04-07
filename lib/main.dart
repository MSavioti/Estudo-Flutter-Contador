import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var contador = 0;

  void acrescentar() {
    setState(() {
      contador++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          scaffoldBackgroundColor: Colors.grey[700],
          textTheme: TextTheme(bodyText2: TextStyle(color: Colors.white))),
      home: new Scaffold(
        appBar: AppBar(
          title: Text(
            'Contador',
            style: TextStyle(
              color: Colors.black,
            ),
          ),
          backgroundColor: Colors.white,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [Text('Contagem: $contador')],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.white,
          onPressed: acrescentar,
          child: Icon(Icons.arrow_upward_sharp, color: Colors.black),
        ),
      ),
    );
  }
}
