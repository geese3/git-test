import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_example/main7.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Widget 을 비율로 배치하기'),
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
    return Column(
      children: [
        Container(width: double.infinity, height: 200, color: Colors.red,),
        Expanded(child: Container(color: Colors.blue, height: 100,),),
        Flexible(child: Container(color: Colors.red, height: 100,),),
        // Flexible(
        //   flex: 1,
        //   child: Container(
        //     color: Colors.red,
        //   ),
        // ),
        // Flexible(
        //   flex: 2,
        //   child: Container(
        //     color: Colors.blue,
        //   ),
        // ),
        // Flexible(
        //   flex: 1,
        //   child: Container(
        //     color: Colors.green,
        //   ),
        // ),
        // Flexible(
        //   flex: 2,
        //   child: Container(
        //     color: Colors.yellow,
        //   ),
        // ),
      ],
    );
  }
}