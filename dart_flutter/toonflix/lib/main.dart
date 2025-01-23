import 'package:flutter/material.dart';
import 'package:toonflix/%08screens/home_screen.dart';
import 'package:toonflix/service/api_service.dart';
// import 'package:toonflix/%08screens/home_screen.dart';
// import 'package:toonflix/widget/button.dart';
// import 'package:toonflix/widget/currency_card.dart';

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
// class App extends StatelessWidget {
//   const App({super.key});

// 1.2 카드만들기
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//         home: Scaffold(
//       backgroundColor: const Color(0xFF181818),
//       body: SingleChildScrollView(
//         child: Padding(
//           padding: const EdgeInsets.symmetric(horizontal: 20),
//           child:
//               Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
//             const SizedBox(
//               height: 80,
//             ),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.end,
//               children: [
//                 Column(
//                   crossAxisAlignment: CrossAxisAlignment.end,
//                   children: [
//                     const Text(
//                       "Hey,Selena",
//                       style: TextStyle(
//                         color: Colors.white,
//                         fontSize: 38,
//                         fontWeight: FontWeight.w800,
//                       ),
//                     ),
//                     Text(
//                       "Welcome back",
//                       style: TextStyle(
//                         color: Colors.white.withOpacity(0.8),
//                         fontSize: 18,
//                       ),
//                     ),
//                   ],
//                 )
//               ],
//             ),
//             const SizedBox(
//               height: 70,
//             ),
//             Text(
//               "Total Balance",
//               style: TextStyle(
//                 color: Colors.white.withOpacity(0.8),
//                 fontSize: 22,
//               ),
//             ),
//             const SizedBox(
//               height: 5,
//             ),
//             const Text(
//               "\$5 194 382",
//               style: TextStyle(
//                   color: Colors.white,
//                   fontSize: 48,
//                   fontWeight: FontWeight.w600),
//             ),
//             const SizedBox(height: 30),
//             const Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Button(
//                     text: "Transfer",
//                     bgColor: Color(0xFFF2B33A),
//                     textColor: Colors.black),
//                 Button(
//                     text: "Request",
//                     bgColor: Color(0xFF1F2123),
//                     textColor: Colors.white),
//               ],
//             ),
//             const SizedBox(
//               height: 80,
//             ),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               crossAxisAlignment: CrossAxisAlignment.end,
//               children: [
//                 const Text(
//                   "Wallets",
//                   style: TextStyle(
//                     color: Colors.white,
//                     fontSize: 36,
//                     fontWeight: FontWeight.w600,
//                   ),
//                 ),
//                 Text(
//                   "View All",
//                   style: TextStyle(
//                       color: Colors.white.withOpacity(0.8), fontSize: 18),
//                 )
//               ],
//             ),
//             const SizedBox(
//               height: 20,
//             ),
//             const CurrencyCard(
//               name: "Euro",
//               amount: "6 428",
//               code: "EUR",
//               icon: Icons.euro_rounded,
//               isInverted: false,
//               order: 0,
//             ),
//             const CurrencyCard(
//               name: "Bitcoit",
//               amount: "9 785",
//               code: "BTC",
//               icon: Icons.currency_bitcoin,
//               isInverted: true,
//               order: 1,
//             ),
//             const CurrencyCard(
//               name: "Dollar",
//               amount: "6 428",
//               code: "USD",
//               icon: Icons.attach_money,
//               isInverted: false,
//               order: 2,
//             ),
//           ]),
//         ),
//       ),
//     ));
//   }
// }

// 2.1 State
// StatelessWidget은 빌드메서드를 통해서 UI를 출력만 한다.
// StatefulWidget은 상태를 가지고 있어서 Stateful이라고 불린다.
// 상태에 따라 변하게 될 데이터라고 생각할 수 있다.
// setState함수는 State클래스에게 데이터가 변경되었다고 알려준다.
// setSate가 없다면 데이터는 변경은 되지만 보이는 화면에는 반영이 되지 않는다.
// 빌드메서드를 다시 실행시켜 바로 바뀌는걸 볼수 있다.
// setState함수안에 꼭 넣지 않아도 된다 하지만 넣는걸 권장한다.

// class App extends StatefulWidget {
//   const App({super.key});
//   @override
//   State<App> createState() => _AppState();
// }
// class _AppState extends State<App> {
//   List<int> numbers = [];
//   void onClicked() {
//     setState(() {
//       numbers.add(numbers.length);
//     });
//   }
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         backgroundColor: const Color(0xFFF4EDDB),
//         body: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               const Text(
//                 "Click Counter",
//                 style: TextStyle(fontSize: 30),
//               ),
//               for (var n in numbers) Text("$n"),
//               IconButton(
//                 iconSize: 40,
//                 onPressed: onClicked,
//                 icon: const Icon(Icons.add_box_rounded),
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// 2.2 BuildContext
// 플러터는 앱의 모든 스타일을 한 곳에서 지정할 수 있는 기능이 있다.
// theme을 만들고 자식에게 전달하기위해 bulidContext를 이용해야 한다.

// // 2.3 Widget Lifecycle
// // 이벤트에 반응한다.
// // initSate는 상태를 초기하기 윈한 메서드이다.
// // int a = 0;으로 초기화가 가능한데 왜 필요한가 보통은 필요없다.
// // 부모 요소에 의존하는 데이터를 초기화해야 하는 경우
// // 데이터 초기하기 위해 context를 사용하게 될경우 API에서 업데이트 할때 사용된다.
// // initSate는 bulid메서드 보다 먼저 호출 되어야 하고 오직 단 한 번만 호출된다.
// class App extends StatefulWidget {
//   const App({super.key});
//   @override
//   State<App> createState() => _AppState();
// }
// class _AppState extends State<App> {
//   bool showTitle = true;
//   void toggleTitle() {
//     setState(() {
//       showTitle = !showTitle;
//     });
//   }
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       theme: ThemeData(
//         textTheme: const TextTheme(
//           titleLarge: TextStyle(
//             color: Colors.red,
//           ),
//         ),
//       ),
//       home: Scaffold(
//         body: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               showTitle ? const MyLargeTitle() : const Text("Not thing!"),
//               IconButton(
//                 onPressed: toggleTitle,
//                 icon: const Icon(Icons.remove_red_eye),
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
// class MyLargeTitle extends StatefulWidget {
//   const MyLargeTitle({
//     super.key,
//   });
//   @override
//   State<MyLargeTitle> createState() => _MyLargeTitleState();
// }
// class _MyLargeTitleState extends State<MyLargeTitle> {
//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState(); // initSate사용할떄 super.initState();호출해야 한다.
//     print("Hello");
//   }
// // 위젯이 스크린에서 제가될 떄 호출되는 메서드이다.
// // API 업데이트나 이벤트 리스너를 취소 하거나 form의 리스너에서 벅어나고 싶을때 사용한다.
// // 위젯트리에서 제거되기 전에 무언가를 취소할떄 사용한다.
//   @override
//   void dispose() {
//     // TODO: implement dispose
//     super.dispose();
//     print("dipose!");
//   }
//   @override
//   Widget build(BuildContext context) {
//     print("bulid");
//     return Text(
//       "My Large Title",
//       style: TextStyle(
//         fontSize: 30,
//         color: Theme.of(context).textTheme.titleLarge!.color,
//       ),
//     );
//   }
// }

// Pomodoro App
// class App extends StatelessWidget {
//   const App({super.key});
//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     return MaterialApp(
//       theme: ThemeData(
//           scaffoldBackgroundColor: const Color(0xFFE7626C),
//           textTheme: const TextTheme(
//             headlineMedium: TextStyle(
//               color: Color(0xFF232B55),
//             ),
//           ),
//           cardColor: const Color(0xFFF4EDDB)),
//       home: const HomeScreen(),
//     );
//   }
// }

// webtoonAPI
class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}
