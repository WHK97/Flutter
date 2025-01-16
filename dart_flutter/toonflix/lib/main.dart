import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

// // 1.0 Flutter Hello World
// // Mateiral Cuperdino
// // wiget을 상속 받아 원하는 화면을 만든다. 위젯을 만들고 실행하기 위해서는 bulid매서드가 필요하다.
// // MaterialApp(Android) CupertinoApp(IOS)은 구글과 애플의 디자인 시스템을 사용해야한다.
// // 둘중에 하나를 빌드메서드에 이런 스타일로 리턴해준다는걸 알려줘야 한다. 커스터마이즈한 화면을 만들기 위해서도
// // 설정을 해야한다. 기본 베이스 UI가 있어야하기 때문이다. 플러터는 구글이 만들었기 때문에 material을 추천 한다.
// // MaterialApp에 실행시켜 텍스트를 입력해주면 이상하다. Scaffold위젯이 필요하기 때문이다.
// // Scaffold는 화면의 구조를 제공한다. 플러터는 대부분 위젯으로 이루어 져있다.
// class App extends StatelessWidget {
//   const App({super.key});
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text("Hello Flutter!"),
//         ),
//         body: const Center(
//           child: Text(
//             "Hello World",
//             style: TextStyle(fontSize: 50),
//           ),
//         ),
//       ),
//     );
//   }
// }

// 1.1 FLutter UI
// Row는 수평 Colum 수직을 나타낸다.
class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(0xFF181818),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
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
                      "Hey,Selena",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 38,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    Text(
                      "Welcome back",
                      style: TextStyle(
                        color: Colors.white.withOpacity(0.8),
                        fontSize: 18,
                      ),
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
                color: Colors.white.withOpacity(0.8),
                fontSize: 22,
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            const Text(
              "\$5 194 382",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 48,
                  fontWeight: FontWeight.w600),
            ),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: const Color(0xFFF2B33A),
                    borderRadius: BorderRadius.circular(45),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.symmetric(
                      vertical: 20, // 세로
                      horizontal: 50, // 가로
                    ),
                    child: Text(
                      "Transfer",
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: const Color(0xFF1F2123),
                    borderRadius: BorderRadius.circular(45),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.symmetric(
                      vertical: 20, // 세로
                      horizontal: 50, // 가로
                    ),
                    child: Text(
                      "Request",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            )
          ]),
        ),
      ),
    );
  }
}
