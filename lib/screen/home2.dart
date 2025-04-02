import 'package:flutter/material.dart';

class home2 extends StatefulWidget {
  const home2({super.key, required String imageUrl});

  @override
  State<home2> createState() => _home2State();
}

class _home2State extends State<home2> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text('this is new page'),
    );
  }
}