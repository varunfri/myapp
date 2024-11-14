import 'package:flutter/material.dart';

class Menu extends StatefulWidget {
  const Menu({super.key});

  @override
  State<Menu> createState() => _Menu();
}

class _Menu extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    return const Drawer(
        child: Column(
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              
              children: [
                Padding(
                  padding: EdgeInsets.all(20),
                  child: CircleAvatar(
                    radius: 50,
                    backgroundColor: Colors.amber,
                    backgroundImage: NetworkImage(""),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Text(
              "UserName",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ],
        )
      ],
    ));
  }
}
