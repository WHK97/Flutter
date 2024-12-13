import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xFF181818),
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
        Text("a"),
        Row(
          children: [
            Container(
              color: Colors.red,
            ),
            Column(
              children: [
                Container(
                  color: Colors.blue,
                ),
              ],
            )
          ],
        )
      ],
    );
  }
}
