import 'package:flutter/material.dart';
import 'package:flutter_example/constraint.dart';

const assetImagePath = 'assets/images';
const bannerImage = '$assetImagePath/colorOffset.png';

void main() {
  runApp(
    const MaterialApp(
      home: HomeWidget(),
    ),
  );
}

class HomeWidget extends StatelessWidget {
  const HomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter 에서 로컬 데이터 사용하기'),
      ),
      body: const Body(),
    );
  }
}


class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image.asset(bannerImage)
    );
  }
}
