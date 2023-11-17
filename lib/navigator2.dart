import 'package:flutter/material.dart';
import 'package:flutter_example/screen/newPage.dart';

void main() {
  runApp(
    const MaterialApp(
      home: HomeWidget(),
    ),
  );
}

class HomeWidget extends StatefulWidget {
  const HomeWidget({super.key});

  @override
  State<HomeWidget> createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  late int index;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Flutter 에서 화면 이동하기')),
      ),
      body: Center(
        child: TextButton(
          child: const Text('Go To Page'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const NewPage(),
              ),
            );
          },
        ),
      ),
    );
  }
}
