import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Study to Container"),
        ),
        body: Body(),
      ),
    ),
  );
}

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(height: 100, color: Colors.blue),
        Flexible(flex: 1, child: Container(height: 100, color: Colors.red)),
        // 높이에 상관없이 전부 차지한다.
        Expanded(child: Container(color: Colors.green))
      ],
    );
  }
}
