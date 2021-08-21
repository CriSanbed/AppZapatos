import 'package:flutter/material.dart';
import 'package:app_zapatos/User/UI/Screen/pantalla1.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App Zapatos Deportivos',
      home: Pantalla1(),
      initialRoute: 'main',
      routes: {
        'main': (context) => Pantalla1(),
      },
    );
  }
}

