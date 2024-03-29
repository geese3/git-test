import 'package:flutter/material.dart';
import 'package:flutter_example/screen/newPage.dart';
import 'package:go_router/go_router.dart';

void main() {
  runApp(
    MaterialApp.router(
      routerConfig: GoRouter(
        initialLocation: '/',
        routes: [
          GoRoute(
            path: '/',
            name: 'home',
            builder: (context, _) => const HomeWidget(),
          ),
          GoRoute(
            path: '/new',
            name: 'new',
            builder: (context, _) => const NewPage(),
          ),
          GoRoute(
            path: '/new1',
            name: 'new1',
            builder: (context, _) => const NewPage2(),
          ),
        ],
      ),
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
            context.pushNamed('new');
          },
        ),
      ),
    );
  }
}
