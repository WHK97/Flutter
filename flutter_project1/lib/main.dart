import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            TestCheckBox(),
          ],
        ),
      ),
    );
  }
}

class TestCheckBox extends StatefulWidget {
  const TestCheckBox({super.key});

  @override
  State<TestCheckBox> createState() => _TestCheckBoxState();
}

class _TestCheckBoxState extends State<TestCheckBox> {
  List<bool> values = [false, false, false];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    values = [false, false, false];
  }

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Checkbox(value: values[0], onChanged: (value) => (0, value ?? false)),
        Checkbox(value: values[1], onChanged: (value) => (1, value ?? false)),
        Checkbox(value: values[2], onChanged: (value) => (2, value ?? false)),
      ],
    );
  }

  void changeValue(int index, bool value) {
    setState(() {
      values[index] = value;
    });
  }
}


// // 1. Container 연습해보기
// class Container1 extends StatelessWidget {
//   const Container1({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 100,
//       width: double.infinity,
//       // color: Colors.red.shade200, // BoxDecoration 선언시 color가 있으면 에러발생
//       padding: const EdgeInsets.symmetric(vertical: 0.8),
//       margin: const EdgeInsets.symmetric(vertical: 10),
//       decoration: BoxDecoration(
//           color: Colors.amber,
//           // 컨테이너 박스테두리 데코레시연
//           border: Border.all(
//               color: Colors.red, width: 10, style: BorderStyle.solid),
//           // 테두리 곡선 설정
//           borderRadius: BorderRadius.circular(100)),
//       child: Center(
//         child: Container(
//           color: Colors.yellow,
//           child: const Text("Box1"),
//         ),
//       ),
//     );
//   }
// }

// // 2. Placeholder 연습 범위가 얼마인지 보여준다.
// class Placeholder1 extends StatelessWidget {
//   const Placeholder1({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const Placeholder(
//       child: Row( // Row 좌우로 배치할때 사용한다.
//         children: [Text("Hello")],
//       ),
//     );
//   }
// }

// // 3. 위젯 위치이동시키기
// class App extends StatelessWidget {
//   const App({super.key});
//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     return MaterialApp(
//       home: Scaffold(
//           body: SafeArea(
//         child: Stack(
//           children: [
//             // Container(
//             //   width: 500,
//             //   height: 500,
//             //   color: Colors.black,
//             // ),
//             Center(
//               child: Container(
//                 width: 300,
//                 height: 300,
//                 decoration: BoxDecoration(
//                   color: Colors.red,
//                   borderRadius: BorderRadius.circular(150),
//                 ),
//               ),
//             ),
//             Align(
//               child: Container(
//                 width: 280,
//                 height: 280,
//                 decoration: BoxDecoration(
//                   color: Colors.black,
//                   borderRadius: BorderRadius.circular(140),
//                 ),
//               ),
//             ),
//             const Align(
//               child: Text(
//                 "Count 0",
//                 style: TextStyle(color: Colors.red, fontSize: 30),
//               ),
//             ),
//             // // 위젯으 기본 사이를 벗어나서 위치 이동이 가능하다.
//             // Align(
//             //   alignment: Alignment.bottomRight,
//             //   child: Container(
//             //     width: 300,
//             //     height: 300,
//             //     color: Colors.yellow,
//             //   ),
//             // ),
//             // // 위젯 사이즈 안에서 이동이 가능하다.
//             // Positioned(
//             //   bottom: 0,
//             //   right: 0,
//             //   child: Container(
//             //     width: 200,
//             //     height: 200,
//             //     color: Colors.green,
//             //   ),
//             // ),
//           ],
//         ),
//       )),
//     );
//   }
// }

// // 4. 컨테이너
// class App extends StatelessWidget {
//   const App({super.key});
//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     return MaterialApp(
//         home: Scaffold(
//       body: SafeArea(
//         child: Placeholder(
//               child: Container(
//             height: 500,
//             width: 500,
//             color: Colors.red,
// //             child: Container(
// //               // 300 300 부분만 검정색이 될꺼 같지만 플러터의 특성떄문에 전체가 검은색이 된다.
// // // 정확한 위치가 제공되지 않기 때문에 부보의 크기를 따라 간다.
// //               height: 300,
// //               width: 300,
// //               color: Colors.black,
// //             )
//             child: Align(
//               // 위치가 제공되는 위젯을 사용하면 된다.
//               child: Container(
//                 height: 300,
//                 width: 300,
//                 color: Colors.black,
//               ),
//             ),
//           )),
//           child: Row(
//             children: [
//               Flexible(
//                 // 자기 공간에 맞게 설정이 된다.
//                 child: Container(
//                   color: Colors.blue,
//                   child: const Text(
//                     "Hello World! Hello World! Hello World! Hello World! Hello World!",
//                     style: TextStyle(fontSize: 30),
//                   ),
//                 ),
//               ),
//               Expanded(
//                 // 공간 전체를 차지 한다 두개의 Expanded가 있다면 절반의 비율로 나눠진다.
//                 child: Container(
//                   color: Colors.red,
//                   child: const Text(
//                     "Hello World! ",
//                     style: TextStyle(fontSize: 30),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     ));
//   }
// }

// Stateful less
// class App extends StatelessWidget {
//   const App({super.key});
//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     return const MaterialApp(
//       home: Scaffold(
//         body: SafeArea(
//           child: Column(children: [
//             ExampleStateless(),
//             ExampleStateful(),
//           ]),
//         ),
//       ),
//     );
//   }
// }

// //
// class ExampleStateless extends StatelessWidget {
//   const ExampleStateless({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Expanded(
//       flex: 1,
//       child: Container(
//         color: Colors.red,
//       ),
//     );
//   }
// }

// class ExampleStateful extends StatefulWidget {
//   const ExampleStateful({super.key});

//   @override
//   State<ExampleStateful> createState() => _ExampleStatefulState();
// }

// class _ExampleStatefulState extends State<ExampleStateful> {
//   int index = 0;
//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Expanded(
//       flex: 1,
//       child: GestureDetector(
//         onTap: () {
//           setState(() {
//             if (index == 5) {
//               index = 0;
//               return;
//             }
//             index += 1;
//           });
//         },
//         child: Container(
//           color: Colors.blue.withOpacity(index / 5),
//           child: Center(
//             child: Text(
//               "$index",
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }