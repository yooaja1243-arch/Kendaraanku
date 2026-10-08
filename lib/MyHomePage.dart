import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final TextEditingController inputNama = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('kendaraanku'),
        backgroundColor: const Color(0xFFF8FAFC),
      ),
      backgroundColor: const Color(0xFFF8FAFC),
      body: Column(
        children: [
          Center(
            child: Container(
              width: 300,
              color: Colors.white,
              child: TextField(
                decoration: InputDecoration(
                  fillColor: const Color(0xFFF2F7A0),
                  hintText: 'pin 6 digit',
                  filled: true,
                  border: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(40)),
                  ),
                ),
                controller: inputNama,
                onSubmitted: (value) {
                  inputNama.text = value;
                },
              ),
            ),
          ),
          const Padding(padding: EdgeInsets.all(16.0)),
          ElevatedButton(
            child: const Text('Tampilkan Email'),
            onPressed: () {
              print(inputNama.text);
            },
          ),
          const SizedBox(height: 16),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamedAndRemoveUntil(
                context,
                '/login',
                (route) => false,
              );
            },
            child: const Text('Log Out'),
          ),
        ],
      ),
    );
  }
}
