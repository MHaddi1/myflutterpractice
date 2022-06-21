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
          title: const Text(""),
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
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        Expanded(
          child: Container(
              alignment: Alignment.bottomRight,
              padding: const EdgeInsets.all(16.0),
              child:Text(
                text,
                style: const TextStyle(
                  fontSize: 40,
                  color: Colors.orange,
                ),
              )),
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
    );
  }

  Widget customOutlineButton(String val) {
    return Expanded(
      child: OutlineButton(
        padding: const EdgeInsets.all(25.0),
        onPressed: () => btnClicked(val),
        child: Text(
          val,
          style: const TextStyle(
              fontSize: 35.0, color: Color.fromARGB(255, 0, 0, 0)),
        ),
      ),
    );
  }

  int first = 0, second = 0;
  String res = "", text = "";
  String opp = "";
  void btnClicked(String btnText) {
    if (opp == "C") {
      res = "";
      text = "";
      first = 0;
      second = 0;
    }else if (btnText == "+" ||
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
      text=res;
    });
  }
 
}
