import 'package:flutter/material.dart';

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
  void initState() {
    super.initState();
    index = 0;
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Flutter 에서 화면 이동하기')),
      ),
      body: homeBody(),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'search'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'person'),
        ],
        currentIndex: index,
        onTap: (newIndex) => setState(() {
          index = newIndex;
        },),
      ),
    );
  }

  Widget homeBody() {
    switch (index) {
      case 1:
        return const Center(
          child: Icon(Icons.search, size: 100),
        );
      case 2:
        return const Center(
          child: Icon(Icons.person, size: 100),
        );
      case 0:
      default:
        return const Center(
          child: Icon(Icons.home, size: 100),
        );
    }
  }
}
