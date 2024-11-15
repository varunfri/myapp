import 'package:flutter/material.dart';
import 'package:myapp/Screens/profile.dart';
import '../Screens/Menu/menu.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _Home();
}

class _Home extends State<Home> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        key: _scaffoldKey,
        drawer: const Menu(),
        appBar: AppBar(
          title: const Text("H O M E"),
          centerTitle: true,
          actions: [
            IconButton(
              onPressed: () {
                //TODO: change the routes here
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext) => const Profile(),
                  ),
                );
              },
              icon: const Icon(
                Icons.pause_rounded,
                color: Colors.red,
                fill: 0.2,
              ),
            ),
          ],
        ),
        body: GestureDetector(
          onPanUpdate: (details) {
            if (details.delta.dx > 0) {
              _scaffoldKey.currentState!.openDrawer();
            }
          },
          // Replace Center with Container that fills the entire screen
          child: Container(),
        ),
      ),
    );
  }
}
