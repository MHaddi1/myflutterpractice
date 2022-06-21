import 'package:flutter/material.dart';

class Stars extends StatelessWidget {
  const Stars({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
child: Row(
  mainAxisSize: MainAxisSize.min,
  children: [
    Icon(Icons.star, color: Colors.green[500]),
    Icon(Icons.star, color: Colors.green[500]),
    Icon(Icons.star, color: Colors.green[500]),
    const Icon(Icons.star, color: Colors.black),
    const Icon(Icons.star, color: Colors.black),
  ],
),
    );
  }
}