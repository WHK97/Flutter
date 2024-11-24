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
    return Stack(
      children: [
        Container(
          width: 500,
          height: 500,
          color: Colors.red,
        ),
        Positioned(
          right: 0,
          left: 0,
          child: Container(
            width: 400,
            height: 400,
            color: Colors.blue,
          ),
        ),
        Align(
          alignment: Alignment(-1, -1),
          child: Container(
            width: 200,
            height: 200,
            color: Colors.yellow,
          ),
        ),
      ],
    );
  }
}
