import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/Screens/Menu/items.dart';

import '../profile.dart';

class Menu extends StatefulWidget {
  const Menu({super.key});

  @override
  State<Menu> createState() => _Menu();
}

class _Menu extends State<Menu> {
  var menuItem = MenuItems();
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(
              //TODO change accord to your need
              top: MediaQuery.of(context).size.height * 0.09,
              left: MediaQuery.of(context).size.width * 0.1,
            ),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(children: [
                  CircleAvatar(
                    radius: 60,
                    backgroundImage:
                        NetworkImage("https://i.ibb.co/pKhKbry/logo-file.jpg"),
                  ),
                ]),
                SizedBox(height: 8),
                //TODO assign a var instead
                Text(
                  "Username",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                Text(
                  "Username@gmail.com",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ],
            ),
          ),
          //

          Expanded(
            // Constrains ListView to take available vertical space
            child: ListView.builder(
              padding: EdgeInsets.only(top: 40, left: 22),
              itemCount: menuItem.menu.length,
              itemBuilder: (context, index) {
                return ListTile(
                  minTileHeight: MediaQuery.of(context).size.height * 0.09,
                  leading: Icon(
                    menuItem.icon[index],
                    size: 26,
                  ),
                  title: Text(
                    menuItem.menu[index],
                    style: GoogleFonts.roboto(
                        fontSize: 18, fontWeight: FontWeight.normal),
                  ),
                  onTap: () {
                    //TODO implement the routes here
                    switch (index) {
                      case 0:
                        Navigator.pop(context);
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Profile()));
                        break;
                      case 1:
                        print("Object 1");
                        break;
                    }
                  },
                );
              },
            ),
          ),

          OutlinedButton.icon(
              onPressed: () {},
              icon: Icon(Icons.power_settings_new),
              label: Text("LogOut!")),
          SizedBox(height: 80),
          Text("Version:1.0"),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}
