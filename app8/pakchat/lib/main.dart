import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("PakChat"),
        ),
        body: const MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      
      children: const <Widget>[
        Card(
          child: ListTile(
            
            title: Text(
              "Information",
              style: TextStyle(
                fontSize: 40,
                color: Colors.amber,
                backgroundColor: Colors.white,
              ),
            ),
          ),
        ),
        Card(
          child: ListTile(
            leading:  Icon(Icons.person),
            title: Text("Text 1"),
          ),
        ),
      ],
    );
  }
}
