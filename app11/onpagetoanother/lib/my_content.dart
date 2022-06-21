// ignore_for_file: deprecated_member_use

import 'dart:ffi';

import 'package:flutter/material.dart';

class MyContentPage extends StatelessWidget {
  const MyContentPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Expanded(
        child: Column(
          children: [
            Image.network(
              'https://media-exp1.licdn.com/dms/image/C5603AQHbMd2XfMBiFQ/profile-displayphoto-shrink_200_200/0/1638182197224?e=1657756800&v=beta&t=ZtmgB_LzWkOUhyCEBef_Xsu69BwgGVAi7x1LOdTlqrI',
            ),
            const SizedBox(
              height: 10,
            ),
            const Divider(
              color: Colors.black,
            ),
            Container(
              margin: const EdgeInsets.all(10.0),
              padding: const EdgeInsets.all(10.0),
              color: Colors.blueGrey,
              width: double.infinity,
              child: const Center(
                child: Text(
                  'Hello World',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                debugPrint('The Debug Print');
              },
              child: const Text('Elevated Button'),
            ),
            OutlineButton(
              onPressed: () {
                debugPrint('The Debug Print');
              },
              child: const Text('OutLine Button'),
            ),
            TextButton(
              onPressed: () {
                debugPrint('The Debug Print');
              },
              child: const Text('Text Button'),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(Icons.local_fire_department,color: Colors.orangeAccent,),
                Icon(Icons.local_fire_department,color: Colors.orangeAccent),
                Icon(Icons.local_fire_department,color: Colors.orangeAccent),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
