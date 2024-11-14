import "package:flutter/material.dart";
import "./Screens/home.dart";

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement Theme, Use Providers
    return MaterialApp(
      themeMode: ThemeMode.system,
      title: "Building for HrDept",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const Home(),
    );
  }
}
