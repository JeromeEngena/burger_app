import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Hamburger(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(color: Colors.teal, centerTitle: true),
      ),
    );
  }
}

class Hamburger extends StatefulWidget {
  const Hamburger({super.key});

  @override
  State<Hamburger> createState() => _HamburgerState();
}

class _HamburgerState extends State<Hamburger> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(slivers: [
      SliverAppBar(
        title: const Text('Deliver Me'),
        leading: IconButton(icon: const Icon(Icons.menu), onPressed: () {}),
        actions: [
          IconButton(icon: const Icon(Icons.shopping_cart), onPressed: () {})
        ],
      ),
    ]));
  }
}
