import 'package:flutter/material.dart';
import 'package:widgets/content.dart';
import 'package:widgets/side_bar.dart';
import 'package:widgets/stars.dart';

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
        drawer: const SideBar(),
        appBar: AppBar(
          backgroundColor: Colors.deepPurple,
          title: const Text('Superior University'),
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
    return Container(
      padding: const EdgeInsets.all(20),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Column(
                children: [
                  Image.network(
                    'https://media.istockphoto.com/photos/abstract-wavy-object-picture-id1198271727?b=1&k=20&m=1198271727&s=170667a&w=0&h=b626WM5c-lq9g_yGyD0vgufb4LQRX9UgYNWPaNUVses='
                  ),
                   const Padding(padding: EdgeInsets.all(5)),
                  const Text('HD Background Pic',style: TextStyle(fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: Colors.brown
                  ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Column(
                children: [
                  Image.network(
                    'https://wallpapercave.com/wp/wp2670858.jpg',
                    
                  ),
                  const Padding(padding: EdgeInsets.all(5)),
                  const Text('HD Background Pic',style: TextStyle(fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: Colors.brown
                  ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
