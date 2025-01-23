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

// // 4.0 Function
// // function은 parameter가 있고 parameter로 받은 값을 사용할 수 있다.
// // void는 return값이 없다. main함수도 return을 하지 않기 때문에 void이다.
// // parameter에는 타입과 이름을 작성해야 한다.
// // 함수의 내용이 한줄인 경우 에로우 함수로도 사용이 가능하다.
// void hello(String name) => print("Hello $name nice to meet you!");
// void main() {
//   hello("Lee");
// }

// // 4.1 Function Named Parameter
// // 파라미터에 정보를 보낼때 순서대로 보내야 한다 보내야하는 양이 많으면 나중에 어떤 위치에 어떤 정보를 보내야하는지
// // 찾기 힘들다 그럴때 네임드 파라메터를 사용한다.
// // 기존 파라미터 부분을 {}로 감싸고 required를 붙인다 붙이는 이유는 반드시 전달되어야 함들 나타내기 때문이다
// // nullsafty와 같이 사용도 가능하고 아니며 값이 안들어올 때를 대비해 값을 미리 지정할 수 있다.
// // nullsafty같은 경우 에러발생할 수 있다.
// String hello({String name = "홍길동", int? age, required String country}) {
//   return "Hello $name, you are $age, and you country $country";
// }
// void main() {
//   print(hello(name: "Lee", age: 20, country: "Korean"));
// }

// // 4.2 Function Optional Positional Parameters
// // 포지션파라미터는 위치에 맞게 작성해야 한다. 만약 포지션 파라미터에서 필수적으로 작성하게 하기 싫은 경우
// // []로감싸고 ?를 붙여 준다 그리고 디폴트 값을 붙여준다. 디폴트값이 없다면 null이 출력된다.
// String hello(String name, int age, [String? country = "cuba"]) {
//   return "Hello $name, you are $age, and you country $country";
// }
// void main() {
//   print(hello("Lee", 13));
// }

// // 4.3 Function QQ Operator
// // ?? ?= 조건이 참인경우 좌항을 거짓인 경우의 우항값이 출력이 된다.
// String capitalizeName(String? name) => name?.toUpperCase() ?? "KIM";
// //name != null ? name.toUpperCase() : "Kim";
// void main() {
//   print(capitalizeName("lee"));
//   int? age; // ??로 null인 경우 값을 넣을 수 있다.
//   age ??= 20;
// }

// // 4.4 Function Typedef
// // type의 명을 내가 정할 수 있다.
// typedef ListOfInts = List<int>;
// ListOfInts reversListOfNumber(List<int> list) {
//   var reversed = list.reversed;
//   return reversed.toList();
// }
// void main() {
//   var result = reversListOfNumber([1, 2, 3, 4, 5]);
//   print(result);
// }

// // 5.1 Class
// // Class를 가장많이 사용하기 때문에 매우 중요하다
// // class에서 property(변수)의 선언할떄 타입을 사용해 정의한다.
// // Method와 Function차이
// // Method: 클래스 내부, 객체를 통해 호출
// // Function: 클래스 외부, 함수명의로 호출
// class Player {
//   String name = "Lee"; // property
//   int xp = 1500;
//   // Method는 클래스나 객체에 사용한 함수 이다.
//   void hello() {
//     // Method
//     print("Hi my name is $name");
//   }
// }
// void main() {
//   // instance생성 (클래스의 정의를 기반으로 생성된 실제 데이터)class 추상화된 데이터를 재사용할 수 있다.
//   var player = Player(); // instance
//   var name = player.name;
//   print(name);
//   player.hello();
// }

// // 5.2 class Constructors
// // 생성자(Constructors)는 class의 이름과 같아야 한다.
// // 생성자(Constructors)가 필요한 이유는 초기화가 필요한 작업이 있기 때문이다. 초기화가 없이 진행이 된다면 유연성이 많이 떨어지게 된다.
// class Player {
//   final String name;
//   int xp = 1500;
//   // 생성자(Constructors)
//   Player(this.name, this.xp);
//   void sayHello() {
//     print("Hello my name is $name");
//   }
// }
// void main() {
//   var player1 = Player("Lee", 10);
//   var player2 = Player("Kim", 10);
//   player1.sayHello();
//   player2.sayHello();
// }

// // 5.3 class Named Constructors Parameters
// // Function의 파라미터처럼 생성자 argument를 네임드 파라미터처럼 사용이 가능하다.
// class Player {
//   final String name;
//   int xp = 1500;
//   String team;
//   int age;
//   // 생성자(Constructors)
//   Player(
//       {required this.name,
//       required this.xp,
//       required this.team,
//       required this.age});
//   void sayHello() {
//     print("Hello my name is $name");
//   }
// }
// void main() {
//   var player = Player(
//     name: "Lee",
//     xp: 1,
//     team: "Red",
//     age: 12,
//   );
// }

// // 5.4 Class Named Constructor
// // 기본생성자에 독립적으로 작용되는 네임드 생성자를 만들수 있다. 네임드 생성자는 : 이후 부분에서 초기화를 진행한다
// class Player {
//   final String name;
//   int xp, age;
//   String team;
//   Player(
//       {required this.name,
//       required this.xp,
//       required this.team,
//       required this.age});
//   Player.createBluePlayer({required String name, required int age})
//       : this.age = age,
//         this.name = name,
//         this.xp = 0,
//         this.team = "Blue";
//   Player.createRedPlayer({required this.name, required this.age})
//       : this.xp = 0,
//         this.team = "Red";
//   void sayHello() {
//     print("Hello my name is $name, $age");
//   }
// }
// void main() {
//   var player1 = Player.createBluePlayer(name: "Kim", age: 21);
//   var player2 = Player.createRedPlayer(name: "Lee", age: 30);
//   player1.sayHello();
//   player2.sayHello();
// }

// // recap
// // API를 받으면 그걸 class로 바꿔야 한다.
// class Player {
//   final String name;
//   int age;
//   Player.fromJson(Map<String, dynamic> playerJson)
//       : name = playerJson['name'],
//         age = playerJson['age'];
//   void sayHello() {
//     print("Hi my name is $name");
//   }
// }
// void main() {
//   var apiData = [
//     {"name": "Lee", "age": 20},
//     {"name": "Kim", "age": 20},
//     {"name": "Han", "age": 20},
//   ];
//   apiData.forEach((playerJson) {
//     var player = Player.fromJson(playerJson);
//     player.sayHello();
//   });
// }

// // 5.5 Class Cascade Notation
// // 중복되는 player.을 .. 으로 축약이 가능하다.
// class Player {
//   String name;
//   int xp;
//   String team;
//   Player({required this.name, required this.xp, required this.team});
//   void sayHello() {
//     print("Hello my name is $name");
//   }
// }
// void main() {
//   var player = Player(name: "Lee", xp: 0, team: "Red")
//     ..name = "Kim"
//     ..xp = 20
//     ..team = "Blue";
// }

// // 5.6 Class Enums
// // Enums은 실수를 방지할 수 있다. color,margin등 고정된 값을 직접 작성하지 않고
// // 하나의 카테고리에 담아 거기서 저장된 값만 뽑아 쓰게 해준다.
// // ""와 같이 텍스트 형식으로 작성할 필요 없다.
// enum Team { Red, Blue }
// enum XPLevel { beginner }
// class Player {
//   String name;
//   XPLevel xp;
//   Team team;
//   Player({required this.name, required this.xp, required this.team});
//   void sayHello() {
//     print("Hello my name is $name $team");
//   }
// }
// void main() {
//   var player = Player(name: "Lee", xp: XPLevel.beginner, team: Team.Blue)
//     ..name = "Kim"
//     ..xp = XPLevel.beginner
//     ..team = Team.Red
//     ..sayHello();
// }

// // 5.7 Class Abstract Class (추상클래스)
// // 추상화 클래스는 객체생성할 수 없다. 다른 클래스들이 직접 구현 해야하는 매소드들을 모아놓은 청사진이라고 볼 수 있다.
// // 상속을해서 매소드 작성을 고정할 수 있다.
// abstract class Human{
//   void walk(); // walk매소드는 void를 반환한다.
// }
// class Player extends Human {
//   String name;
//   int xp;
//   String team;
//   Player({required this.name, required this.xp, required this.team}) {}
//   @override
//   void walk() {
//     // TODO: implement walk
//   }
// }
// void main() {
//   var player = Player(name: "Lee", xp: 0, team: "Red");
// }

// // 5.8 class Inheritance
// // 상속을해 부모의 프로퍼티와 매소드를 자식class에서도 사용이 가능하다.
// // 부모class에 있는 프로퍼티를 사용할려면 생성자에 :super()를 사용하면 된다.
// // mina함수에서 자식class로 부모class의 매소드를 호출이 가능하다.
// class Human {
//   final String name;
//   Human({required this.name});
//   void sayHello() {
//     print("Hi my name is $name");
//   }
// }
// enum Team { Red, Blue }
// class Player extends Human {
//   final Team team;
//   // super은 확장한 class를 가르킨다.
//   Player({required this.team, required String name}) : super(name: name);
//   @override
//   void sayHello() {
//     super.sayHello();
//     print("and I play for $team");
//   }
// }
// void main() {
//   var player = Player(team: Team.Red, name: "Lee");
//   player.sayHello();
// }

// 5.9 class Mixins
// Mixin은 flutter에서 자주 사용할게 될것이다.
// Mixin은 생성자가 없는 클래스를 의미한다. 클래스에 프로퍼티들을 추가하거나 할때 사용한다.
// Mixin은 재사용이 가능하다
// mixin Strong {
//   final double strenghtLevel = 15.99;
// }
// mixin QuickRunner {
//   void runQuick() {
//     print("Ruuuunnnn!!!");
//   }
// }
// enum Team { Red, Blue }
// mixin Tall {
//   late double height = 1.99;
// }
// class Player with Strong, QuickRunner, Tall {
//   final Team team;
//   Player({required this.team, required double height}) {
//     this.height = height;
//   }
//   void myHeight() {
//     print("Hello my height $height");
//   }
// }
// void main() {
//   var player = Player(team: Team.Red, height: 10);
//   player.myHeight();
// }

