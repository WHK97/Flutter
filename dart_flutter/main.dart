// // Json예시
// class Player {
//   final String name;
//   int age;
//   String team;
//   Player.fromJson(Map<String, dynamic> playerJson)
//       : name = playerJson["name"],
//         team = playerJson["team"],
//         age = playerJson["age"];
//   void Hello() {
//     print("Hello my name is $name and $age, $team");
//   }
// }
// void main() {
//   var apiData = [
//     {
//       "name": "Lee",
//       "age": 20,
//       "team": "blue",
//     },
//     {
//       "name": "Kim",
//       "age": 20,
//       "team": "red",
//     },
//     {
//       "name": "Han",
//       "age": 20,
//       "team": "blue",
//     },
//   ];
//   apiData.forEach((a) {
//     var player = Player.fromJson(a);
//     player.Hello();
//   });
// }

// // 상속 예제
// class Huam {
//   final String name;
//   Huam({required this.name});
//   void hello() {
//     print("Hi my name is $name");
//   }
// }
// enum Team { Red, Blue }
// class Player extends Huam {
//   final Team team;
//   Player({
//     required this.team,
//     required String name,
//   }) : super(name: name); // super키워드를 통해 부모클래스와 상호작용이 가능하다.
//   @override
//   void hello() {
//     super.hello();
//     print("and I Play for ${team.name}");
//   }
// }
// void main() {
//   var player = Player(
//     team: Team.Red,
//     name: "Lee",
//   );
//   Team teams = Team.Blue;
//   print(teams);
//   player.hello();
// }

// // mixiin예시
// mixin QickRunner {
//   void runQuick() {
//     print("ruuuun!");
//   }
// }
// class Player with QickRunner {
//   Player();
// }
// void main() {
//   var player = Player();
//   player.runQuick();
// }

// // 1.0 Hello World
// // 다트는 main함수가 필수적으로 있어야 한다. main함수를 찾고 실행을 시키기 떄문이다.
// // 코드의 끝에는 ;를 찍어 줘야한다. 아니면 오류가 발생한다.
// void main() {
//   print("Hello World");
// }

// // 2.0 변수
// // 변수타입 변수명 = 값;을 작성해주면 기본적인 변수 생성이다.
// // 변수를 재할당을 할 수 있지만 변수값의 타입을 맞춰줘야 한다.
// // 문자형 변수에 정수형이나 불린형을 할당할 수 없다.
// // String: 문자형, int: 정수형 , double: 실수형, bool: 불린형등이 있다.
// // 위 처럼 명시적으로 상용할 수 있고 그냥 var키워드를 사용해도 된다.
// // 함수, 메소드 내부에 지역변수를 선언할 떄에는 var를 사용하며 class에서 변수나 property를 선언 할 때에는 타입을 지정해주는 편이다.
// void main() {
//   var name = "Lee"; // var대신 String를 넣어도 오류가 발생하지 않는다.
// }

// // 2.1 Dynamic
// // Dynamic은 여러가지 타입을 가질수 있는 변수에 쓰는 키워드 이다.
// // 보통 사용하지 않지만 어떨때는 유용하게 사용이 된다.
// // var name에 변수명에 마우스를 대면 dynamic타입나온다.
// // var를 사용해도 되는 데 dynamic을 사용하는 이유는 값이 특정 되지 json같은 작업을할 경우에 사용된다.
// // dynamic은 타입을 지정해주지 않으면 메소드를 제한적으로 보여준다.
// // 어떤 값을 받았을때 그 값에 따른 메소드를 보여준다.
// void main() {
//   dynamic name = "Lee";
//   print(name.length);
// }

// // null safety
// // 개발자가 null값을 참조할 수 없게 한다. null값이 있는 경우 런타임 에러가 발생한다.
// // 프로그래밍에서 null값을 삭제할 수 없다 null은 유용하게 쓰이기 때문이다.
// // null값이 될 수 있는걸 명확하게 표시해줘야 한다.
// // String name = "Lee"; name = null; 이렇게는 불ㄱ가능하다.
// // String? name = null; ?로 null일 수도 있다는걸 dart한테 알려준다.
// void main() {
//   String? name = "Lee";
//   name = null;
//   if (name != null) {name.isNotEmpty;}
//   name?.isNotEmpty;
// }

// // 2.2 변수 final
// // String name; var name;를 사용하게 되면 재할당이 가능한 변수가 생성이된다.
// // 재할당이 불가능한 변수를 만들 경우 final name으로 작성해주면 된다. JS의 const와 똑같다.
// //
// void main() {
//   final name = "Lee";
//   // name = "Kim"; err
// }

// // 2.3 변수 late
// // late는 final, var앞에 붙여줄 수 있는 수식이다.
// // late final String name;로 사용이 가능하다
// // late는 초기 데이터 없이 변수를 선언할 수 있게 해준다.
// // api요청을 받을 때 주로 사용을 한다.
// void main() {
//   late final String name;
//   name = "Lee";
//   print(name);
// }

// // 2.4 변수 const
// // dart에서 const는 JS와는 다르다 JS의 const는 final과 같다.
// // dart에서 const는 compile-time constant이다.
// // final과 같이 재할당은 안되지만 중요한건 const는 compile-time에 알고 있는 값이어야 한다.
// // API를 const에 넣는다면 값을 몰르기 때문에 final을 사용하는게 맞다
// // const는 컴파일 할 때 알고 있는 값에 사용한다.
// // 컴파일은 코드에 오류가있는지 확인 하는 과정 런타임 앱을 우리가 사용하는 시점
// void main() {
//   const name = "Lee";
//   // name = "12";
// }

// // 3.0 데이터 타입
// void main() {
//   String a = "1"; bool b = true; int c = 1;
//   double d = 1.1; num e = 1; e = 1.1;
// }

// // 3.1 데이터 타입 List
// // List<변수타입>으로 만들 수 있다.
// // collection if 로 List를 작성이 가능하다.
// void main() {
//   var five = true;
//   var num = [1, 2, 3,
//     if (five) 5 // if(five){ num.add(5);}
//   ];
//   num.add(4);
//   print(num);
// }

// // 3.2 데이터 타입 String Interpolation
// // text에 변수를 추가하는 방법이다.
// // "$변수명" 문자에 $변수명을 입력을 하면 변수값을 추가할 수 있다.
// // 사칙연산을 적용하고 싶다면 "${변수명 + 1}"로 적용이 가능하다.
// void main() {
//   var name = "Lee";
//   var age = 20;
//   var hello = 'Hello my name is $name and I\'m age ${age + 1}';
//   print(hello);
// }

// // 3.3 데이터타입 Collection For
// void main() {
//   var oldFriends = ["Lee", "Kim"];
//   var newFriends = [
//     "Park",
//     for (var friend in oldFriends) "😁$friend",
//   ];
//   // for (var friend in oldFriends) {
//   //   newFriends.add("😁$friend");
//   // }
//   print(newFriends);
// }

// // 3.4 데이터타입 Maps
// // Map은 JS에서 Object이다. Map<타입,object>로 작성한다.
// // 변수타입은 key를 가르키며 object는 value를 가르킨다.
// // object는 모든 자료형을 가르킨다. object자리에 특정 자료형을 넣을 수 있다.
// // Map<int,bool> 숫자를 가진 키와 참,거짓의 값만 있는 것도 만들수 있다.
// void main() {
//   var player = {"name": "Lee"};
//   List<Map<String, Object>> players = [{"name": "Lee"}];
// }

// // 3.5 데이터타입 Sets
// // Set은 List와 비슷해 볼 수 있다 차이점은 {set}, [list]의 차이만 보이지만
// // Set에 속한 모든 아이템은 유니크 하다 중복된 값이 있어도 전부 보여주지 않는다.
// // List는 중복된 값을 모두 보여준다.
// void main() {
//   var set = {1, 2, 3, 4};
//   var list = [1, 2, 3, 4];
//   set.add(3);
//   list.add(3);
//   print(set); // {1,2,3,4}
//   print(list); // [1,2,3,4,3]
// }

// 4.0 Function
void main() {}
