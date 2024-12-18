import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              color: Colors.red,
              margin: const EdgeInsets.symmetric(vertical: 5),
              width: 100,
              height: 100,
              child: const Text("Hello"),
            ),
            Container(
              color: Colors.blue,
              width: 100,
              height: 100,
              child: const Text("Hello1"),
            ),
            Container(
              color: Colors.green,
              width: 100,
              height: 100,
              child: const Text("Hello2"),
            ),
          ],
        ),
      ),
    );
  }
}
