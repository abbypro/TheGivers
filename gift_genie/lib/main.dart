import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gift Genie',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Welcome to Gift Genie'),
        ),
        body: Center(
          child: Text('The perfect gift is only a tap away'),
        ),
      ),
    );
  }
}
