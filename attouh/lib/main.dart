import 'package:attouh/pages/home/home.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:flutter/services.dart';

void main() {
  runApp(const MainApp());

  // SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive, overlays: []);
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
 Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Attouh',
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

