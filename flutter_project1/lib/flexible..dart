import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Study to Container"),
        ),
        body: const Body(),
      ),
    ),
  );
}

// Flexible,Expanded 차이
// Flexible: 높이가 먼저 적용이 된다.
// Expanded: 높이와 상관없이 적용이 된다.
class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(height: 100, color: Colors.blue),
        Flexible(flex: 1, child: Container(height: 100, color: Colors.red)),
        Expanded(child: Container(color: Colors.green))
      ],
    );
  }
}
