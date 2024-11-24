import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Player {
  String name;
  Player({required this.name});
}

void main() {
  var lee = Player(name: "Lee");
  lee.name;
  runApp(App());
}

class App extends StatelessWidget {
  var hello = "Hello World!";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: Color(0xFF181818),
          //Column은 하나의child만 가지고 있지 않는다
          // Column 수직 Row 수평
          body: Padding(
            padding: EdgeInsets.all(10),
            child: Column(
              children: [
                SizedBox(
                  height: 80,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          "Hey,홍길동",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 28,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                        Text(
                          "Welcom back",
                          style: TextStyle(
                            color: Colors.white.withOpacity(0.8),
                            fontSize: 18,
                          ),
                        ),
                      ],
                    )
                  ],
                )
              ],
            ),
          )),
    );
  }
}
