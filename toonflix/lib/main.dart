import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:toonflix/widget/Button.dart';

class Player {
  String name;
  Player({required this.name});
}

void main() {
  runApp(const App());
}

// 위젯으로 사용하기위해 상속받는다
class App extends StatelessWidget {
  const App({super.key});

  // bulid메소드로 화면에 리턴해준다.
  @override
  Widget build(BuildContext context) {
    // CupertinoApp, MaterialApp을 사용해서 빌드를 한다.
    return MaterialApp(
      //Scaffold가 화면구성 구조를 만들어준다.
      home: Scaffold(
        backgroundColor: const Color(0xFF181818),
        body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 80,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        const Text(
                          "Hello, Selena",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 28,
                              fontWeight: FontWeight.w600),
                        ),
                        Text(
                          "Welcome back",
                          style: TextStyle(
                              color: Colors.white.withOpacity(0.8),
                              fontSize: 18,
                              fontWeight: FontWeight.w600),
                        ),
                      ],
                    )
                  ],
                ),
                const SizedBox(
                  height: 120,
                ),
                Text(
                  "Total Balance",
                  style: TextStyle(
                      color: Colors.white.withOpacity(0.8), fontSize: 22),
                ),
                const SizedBox(
                  height: 5,
                ),
                const Text(
                  "\$5 194 284",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                    fontSize: 44,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Button(
                        text: "Teansfer",
                        bgColor: Color(0xFFF1B33B),
                        textColor: Colors.black),
                    Button(
                        text: "Request",
                        bgColor: Color(0xFF1F2123),
                        textColor: Colors.white),
                  ],
                ),
                const SizedBox(
                  height: 100,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Wallets",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 36,
                      ),
                    ),
                    Text(
                      "View All",
                      style: TextStyle(
                        color: Colors.white.withOpacity(0.8),
                        fontSize: 20,
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                    child: const Row(
                  children: [
                    Column(
                      children: [
                        Text("Euro"),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [Text("6 428"), Text("EUR")],
                        )
                      ],
                    )
                  ],
                ))
              ],
            )),
      ),
    );
  }
}
