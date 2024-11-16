# Flutter
운영체제와 직접적으로 소통하지 않는다. 실제로 버튼을 만들어 내지않는다. 엔진이 화면상에 우리가 원하는걸 그려낸다.
Flutter프래임워크에 들어간 코드들을 엔진이 프레임워크를 동작시키고 그려주는 역할을 한다.
## Flutter Widget
```
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// widget은 앱의 UI를 만드는 레고블럭이라고 생각하면 된다. flutter는 위젝으로 이루어 졌다.
void main() {
  // App위젯은 runApp함수에주는 위젯이다. App위젯은 앱의 root가 된다
  runApp(App());
}

// 아직은 class일뿐이다. 위젝이 될려면 SDK에 있는 3개의 core Widget중 하나를 상속받아야한다.
// class App {}
// 기초적인 위젯, 위젯을 상속하면 에러의 위치가 mian에서 위젯을 바뀌게 된다,
// 위젯을 상속받는다면 bulid라는 메소드를 구현해야한다,
// bulid메소드는 flutter를 실향하개 된다, bulid는 위젯의 UI 만들어준다,
class App extends StatelessWidget {
  var hello = "Hello World!";
  @override
  Widget build(BuildContext context) {
    // 위젯을 리턴을 하면 화면에 띄어준다.
    // root위젯은 material(구글), cupertino(ios)앱 두가지를 리턴해줘야한다.
    // 내가 직접만든 UI를 사용하고 싶다해도 기본 UI설정과 같은 재료들을 선택해줘야 한다,
    return MaterialApp(
      //material스타일이 더 좋다
      //flutter개발 규칙이 하나 있는데 scaffold(구조)라는 걸 가져와야 한다.
      // scaffold:화면정렬, 상단버튼 ,네비바 등을 해준다.
      home: Scaffold(
        appBar: AppBar(
          title: Text("Hello Flutter"),
        ),
        body: Center(
          child: Text(hello),
        ),
        //class를 만들떄마다 ,찍어주자 그럼자동으로 구별을 해줘서 보기 편하다.
      ),
    );
  }
}
```