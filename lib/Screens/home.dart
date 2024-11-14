import 'package:flutter/material.dart';
import '../Screens/Menu/menu.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _Home();
}

class _Home extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Menu(),
      appBar: AppBar(
        title: const Text("H O M E"),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.pause_rounded,
              color: Colors.red,
              fill: 0.2,
            ),
          ),
        ],
      ),
      body: const Column(
        children: [
          Text("Column Home"),
        ],
      ),
    );
  }
}
