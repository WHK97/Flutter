# Flutter
플러터는 ios,안드로이드,맥os,윈도우,리눅스,사물인터넷등에 활용이 된다. 플러터는 Dart프로그래밍언어를 사용한다.
운영체제와 직접적으로 소통하지 않는다. 실제로 버튼을 만들어 내지않는다. 엔진이 화면상에 우리가 원하는걸 그려낸다.
Flutter프래임워크에 들어간 코드들을 엔진이 프레임워크를 동작시키고 그려주는 역할을 한다.
flutter create 프로젝트폴더명 // 플러터 프로젝트 파일 생성
cd ./폴더명 // 해당 폴더 위치로 이동
flutter run // 플러터 실행
# 용어및 문법
- Scaggold: 처음시작할 떄 사용하는 도화지라고 보면 된다.
- Row: 자식위젯을 <b>수평방향</b>으로 배치하며 복수의<b>children</b>을 가진다 
  - Row의 메인 축은 가로이므로 mainAxis 가로 CrossAxis 세로방향으로 움직인다
- Column: 자식위젯을 <b>수직방향</b>으로 배치하며 복수의<b>children</b>을 가진다 
  - Column 메인 축은 세로이므로 mainAxis 세로 CrossAxis 가로방향으로 움직인다
- mainAxis: Row: 가로방향,  Column: 세로방향
- CrossAxis: Row: 세로방향, Column: 가로방향
- 위젯감싸기 : command . 으로 자동으로 범위를 감싸줄수있다.
- Placeholder(): 해당 위치에 어떤 위젯의 크기를 보여준다.
- Flexible(): 화면에 맞게 크기를 조절해준다.
- Expanded(): Flexible과 비슷한 역홯을 하지만 높이를 줬을 떄 다르다
## 디자인 가이드
- MaterialApp: 구글이 제공해주는 아이콘(구글 아이콘을 사용을 추천한다)
- Cupertino: 애플(ios)에서 제공해주는 아이콘
이 두가지의 가이드라인을 사용한하고 원하는 디자인도 사용이 가능하다.
## Flutter Widget
Stateless(무상태) Widget은 bulid매서드를 통해서 UI를 출력할 뿐이다.
Stateful(상태유지) Widget은 상태를 가지고있어서 Stateful로 불린다.
Stateful Widget은 두가지로 나뉜다. 첫번째 부분은 상태가 없는 위젯 그 자체 두번째는 부분 위젯상태로 위셎의 state는 위젯에 들어갈 데이터와 UI를 넣는곳이다.
## [BuildContext](../toonflix/lib/header.dart)
context에는 위젯트리에 대한정보가 담겨 있다. 매우 먼 요소를 가지고 있기 때문에 유용하다.
### [Header](../toonflix/lib/header.dart)
링크 참조
### Developer Tools
