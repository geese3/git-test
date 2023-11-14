import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Widget을 좌우로 배치하기'),
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
    return Row(
      // mainAxisSize: MainAxisSize.max,
      // mainAxisAlignment: MainAxisAlignment.center,
      // crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Container(
          width: 100,
          height: 80,
          color: Colors.red,
          child: Text('Container1'),
        ),
        Container(
          width: 100,
          height: 80,
          color: Colors.green,
          child: Text('Container2'),
        ),
        Container(
          width: 100,
          height: 80,
          color: Colors.blue,
          child: Text('Container3'),
        ),
      ],
    );
  }
}
