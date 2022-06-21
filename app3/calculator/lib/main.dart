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
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: const Text("Calculator"),
      ),
      body: Column( 
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Expanded(
              child: Container(
            padding: const EdgeInsets.all(10.0),
            alignment: Alignment.bottomRight,
            child:  Text(
              text,
              style: const TextStyle(
                fontSize: 60.0,
                fontWeight: FontWeight.w500,
                color: Colors.orange
              ),
            ),
          ),
          
          ),
           Row(
             
            children: <Widget>[
              
              customOutlineButton("9"),
              customOutlineButton("8"),
              customOutlineButton("7"),
              customOutlineButton("+"),
            ],
          ),
          Row(
            children: <Widget>[
              customOutlineButton("6"),
              customOutlineButton("5"),
              customOutlineButton("4"),
              customOutlineButton("-"),
            ],
          ),
          Row(
            children: <Widget>[
              customOutlineButton("3"),
              customOutlineButton("2"),
              customOutlineButton("1"),
              customOutlineButton("x"),
            ],
          ),
           Row(
            children: <Widget>[
              customOutlineButton("C"),
              customOutlineButton("0"),
              customOutlineButton("="),
              customOutlineButton("/"),
            ],
          ),
        ],
      ),
    );
  }
  Widget customOutlineButton(String val) {
    return Expanded(
      child: OutlineButton(
        padding: const EdgeInsets.all(25.0),
        onPressed: () => btnClicked(val),
        child: Text(
          val,
          style: const TextStyle(fontSize: 35.0, color: Color.fromARGB(255, 0, 0, 0)),
        ),
      ),
    );
  }
  int first=0, second=0;
  String res="", text = "";
  String opp="";
  void btnClicked(String btnText) {
    if (btnText == "C") {
      res = "";
      text = "";
      first = 0;
      second = 0;
    } else if (btnText == "+" ||
        btnText == "-" ||
        btnText == "x" ||
        btnText == "/") {
      first = int.parse(text);
      res = "";
      opp = btnText;
    } else if (btnText == "=") {
      second = int.parse(text);
      if (opp == "+") {
        res = (first + second).toString();
      }
      if (opp == "-") {
        res = (first - second).toString();
      }
      if (opp == "x") {
        res = (first * second).toString();
      }
      if (opp == "/") {
        res = (first ~/ second).toString();
      }
    } else {
      res = int.parse(text + btnText).toString();
    }
    setState(() {
      text = res;
    });
  }
}
