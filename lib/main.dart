import 'package:flutter/material.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(const YsuConnection());
}

class YsuConnection extends StatelessWidget {
  const YsuConnection({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Youngstown Connection',
      home: const HomeScreen(),
    );
  }
}
