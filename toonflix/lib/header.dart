import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

// State는 우리가 UI를 구축하는 곳이고 데이터를 바꿀때 UI는 새로고침되면서 새로운 데이터를 보여준다,
class _AppState extends State<App> {
  List<int> numbers = [];
  void onClicked() {
    // setSate함수를 꼭 사용해야 한다 State한테 새로운데이터가 온걸 알려준다.
    setState(() {
      numbers.add(numbers.length);
    });
    print(numbers);
  }

  void onClickedremove() {
    // setSate함수를 꼭 사용해야 한다 State한테 새로운데이터가 온걸 알려준다.
    setState(() {
      numbers.remove(numbers.length);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: const TextTheme(titleLarge: TextStyle(color: Colors.red)),
      ),
      home: const Scaffold(
        backgroundColor: Color(0xFFF4EDDB),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MyLargeTitle(),
            ],
          ),
        ),
      ),
    );
  }
}

class MyLargeTitle extends StatefulWidget {
  const MyLargeTitle({
    super.key,
  });

  @override
  State<MyLargeTitle> createState() => _MyLargeTitleState();
}

class _MyLargeTitleState extends State<MyLargeTitle> {
  @override
  Widget build(BuildContext context) {
    return Text(
      "My Large Title",
      style: TextStyle(
          fontSize: 30, color: Theme.of(context).textTheme.titleLarge?.color),
    );
  }
}
