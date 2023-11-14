import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_example/main.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Widget 을 겹겹이 쌓아올리기'),
        ),
        body: Body(),
      ),
    ),
  );
}

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 500,
          height: 500,
          color: Colors.black,
        ),
        Container(
          width: 400,
          height: 400,
          color: Colors.red,
        ),
        Align(
          alignment: Alignment(0.5, -0.6),
          child: Container(
            width: 300,
            height: 300,
            color: Colors.blue,
          ),
        ),
        Positioned(
          bottom: 50,
          right: 30,
          child: Container(
            width: 200,
            height: 200,
            color: Colors.green,
          ),
        ),
      ],
    );
  }
}
