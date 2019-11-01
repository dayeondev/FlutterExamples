import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // return MaterialApp(
    //   title: 'Flutter Layout Demo',
    //   home: Scaffold(
    //     appBar: AppBar(
    //       title: Text('Flutter Layout Demo'),
    //     ),
    //     body: Center(
    //       child: Text('Hello World'),
    //     ),
    //   ),
    // );
    return Container(
      decoration: BoxDecoration(color: Colors.white),
      child: Center(
        child: Text(
          'Hello Dayeon',
          textDirection: TextDirection.ltr,
          style: TextStyle(
            fontSize: 32,
            color: Colors.black87,
          ),
        ),
      ),
    );
  }
}
