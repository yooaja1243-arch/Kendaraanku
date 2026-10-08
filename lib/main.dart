import 'package:flutter/material.dart';
import 'package:kendaraan/Login.dart';
import 'package:kendaraan/MyHomePage.dart';

void main() {
  runApp(const MyHomePage());
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(colorScheme: .fromSeed(seedColor: const Color.fromARGB(255, 244, 243, 245))),
      //home: const myhomepage(),
      initialRoute: '/',
      routes: {
        '/': (context) => const Login(),
        '/home': (context) => const MyHomePage(),
      },
    );
  }
}
