# Dart
Dart를 시작하게 되면 메인함수를 가장 먼저 보게 된다
```
void main(){}
```
메인함수에서는 내가 쓴 코드가 호출이 된다. 만약 메인함수명을 다르게 바꾼다면 에러가 발생을 한다.
```
void Hello(){} // 에러: No main method found 
```

Dart에서 함수, 변수등 끝에는 ;을 꼭 붙여 줘야 한다. 일부러 ;안붙이는 경우가 있기 떄문에 ;를 필수로 붙여줘야한다.
```
void main(){
    print("Hello Wold!"); // O
    // print("Hello Wold!") // X

}
```
## 변수
변수선언과 할당
```
void main() {
  var name; // 변수선언 (변수타입 변수명;)
  name = "Lee"; // 변수할당 (변수명 할당연산자(=) 값;)
  var age = 20; // 변수선언과 할당
}
```
### var & Dynamic
Dart에서는 변수명 앞에 변수의타입을 작성해줘야 한다. 타입을 안써져도 변수값에 대한 타입에 따라 자동으로 타입을 지정해주는 var와 Dynamic이 있다.
#### var
var는 함수 안에서 지역변수를 선언하거나 메소드 안에서 지역변수를 선언하는 상황에서는 var를 사용하는 걸 권장한다
```
void main() {
  var age = 20; // var안에 자동으로 int타입이 지정이 된다.
//int age = 20; // 두개는 같은 의미이다
  age = "20"; // 문자형으로 재할당 할 경우 에러
}
```
var는 처음 값의 타입이 고정으로 들어간다 만약 재할당 할때 마다 변수타입이 달라져야 한다면 Dynamic을 사용해야 한다.
#### Dynamic
```
void main() {
  dynamic age = 20;
  print(age); // 20
  age = "21";
  print(age); // 21

  var name; // 선언만한 상태도 dynaimc타입이 된다 
  var num = 1;
  // num = "1"; //에러 
}
```
daynamic타입은 할당하는 변수 타입마다 타입이 바뀌기 떄문에 권장하지 않지만 사용이 필요할떄가 있다
(JOSN을 작업할때 타입을 확인할경우가 있다)
### Null Safety
Null Safety는 개발자가 null값을 참조할 수 없도록 하는것이다.
```
void main() {
  // length속성이 null값 없기 떄문에 에러가 발생한다
  bool isEmpty(String string) => string.length == 0;
  // print(isEmpty(null)); // 런타입 에어
}
```
하지만 null값은 유용하다 없음을 나타내는 값이기떄문이다
```
void main() {
  String name = "Kim";
  // name = null; // name은 타입은 String이기 때문에 에러가 발생한다.
}

```
타입뒤에 ? 붙여 null값을 허용 할 수 있다 
```
void main() {
  String? name = "Kim";
  name = null; 
}

```
```
void main() {
  String? name = null;
  print(name?.isNotEmpty); // null
  name = "Lee";
  print(name?.isNotEmpty); // true
  print(name?.isEmpty); // false
}
```

### Final
```
void main() {
  final age = 20; // JS의 const처럼 사용이 가능하다.
  // age = 21; 에러

  final String name = "Lee"; // final뒤에 변수타입을 지정할 수 도 있다
  // name = "Kim" // 에러
}

```

### late
late는 fainal이나 var뒤에 붙여 줄수 있다. 보통 변수에 값을 넣어 저장하기 때문에 late를 사용이 적다 하지만 API요청후 그 값을 변수에 넣어야 할 경우에 late를 이용에 접근을 막아 요청받은 후에 값을 넣어준다.
```
void main() {
  // late는 초기 데이터 없이 변수를 선언할 수 있게 해준다.
  late final String name;
  // API요청 후 나중에 변수에 넣어준다.
  // print(name); //값을 넣기전에 접근을 막아준다.
  name = "Lee";
}

```
### const (Compile-time constant)
dart에서 const는 javascript나 typescript와는 다르다. 두개경우 const는 dart의 final과 비슷하다.
final과 const는 상수라는건 같지만 const는 프로그램 실행 전에 값이 확정되어야 합니다.
```
void main() {
  const name = "Lee";
  // name = 'Kim'; // final과 비슷하다.
  // const는 compile-time에 알고 있는 값이어야 한다.

  // const는 컴파일 할 떄 알고 있는 값에 사용한다. 최종적으로 앱스토어에 올리는 값을 저장해준다.
  const API = "API주소";
}

```
- final: 런타임때 값이 결정
- const: 컴파일 타임떄 값이 결정
## 데이터 타입
### 기본 데이터 타입
```
void main() {
  /// Dart에서의 모든 자료형은 object로 이루어져있다.
  String string = "문자형"; // 문자형
  bool isTrue = true; // bool형
  int num1 = 20; // 숫자형
  double num2 = 3.14; // 소수형
  num a = 3.14;
  num b = 3;
}
```
### List

```
void main() {
  // 가능할 떄는 var 자료형class를 사용할떄
  var numbers = [1, 2, 3, 4];
  print(numbers); // [1,2,3,4]
  numbers.add(5);
  print(numbers); //  [1,2,3,4,5]

  List<int> num = [1, 2, 3, 4];
}
```

Dart의 list에서는 if와 for을 지원 한다.

```
void main() {
  // list if for을 지원 한다.
  var giveMeFive = true;
  var numbers = [
    1,
    2,
    3,
    4,
    if (giveMeFive) 5, //밑에 if문처럼 사용이 가능하다.
  ];
  // if (giveMeFive) {
  //   numbers.add(5);
  // }
}
```
#### for
```
void main() {
  var oldFriends = ["Lee", "Han"];
  var newFriends = [
    "Kim",
    "Ryu",
    for (var friend in oldFriends) "😁 $friend",
  ];
  print(newFriends); //[Kim, Ryu, 😁 Lee, 😁 Han]
}
```
### String Interpolation
text에 변수를 추가하는 방법이다.

```
void main() {
  var name = "Lee";
  var age = 20;
  var greeting = "Hello everyone, my name is $name, nice to meet yuo!";
  print(greeting); // Hello everyone, my name is Lee, nice to meet yuo!
  var Hello = "Hello my name is $name and I'm ${age + 2}!";
  print(Hello); // Hello my name is Lee and I'm 22!
}

```
변수만 추가 할경우 $변수명만 작성을 하면 되고 계산이 필요한 경우 ${변수명 계산식}을 작성하면 된다. 
### Maps
Mpa는 JS의 Object나 python의 dictionary같은 거다. 일반적으로 map은 key와 value를 연결하는 객체이다.
```
void main() {
  var player = {
    "name": "Lee",
    "age": 20,
    "isAlive": true,
  };
  Map<int, bool> num = {
    0: false,
    1: true,
  };
  Map<List<int>, bool> num1 = {
    [0]: false,
  };
  
}
```
만약 map으로 key와 value를 가진 object를 만든다면 너무 복잡하다 class 추천한다
```
// X
void main(){
List<Map<String, Object>> players = [
    {"name": "Lee", "xp" = 0},
    {"name": "Lee", "xp" = 0}
    ]
}
```
### Sets
Set에 속한 모든 아이템들이 유니크해야될 때 사용한다. 유니크할 필요가 없다면 List를 사용하면 된다.
```
void main() {
  // Set을 사용할때  
  Set<int> numbers = {
    1,
    2,
    3,
  };
  numbers.add(1);
  print(numbers); //{1, 2, 3}

  // List를 사용할떄
  List<int> number2 = [
    1,
    2,
    3,
  ];
  number2.add(1);
  print(number2); //[1, 2, 3, 1]
}

```
## Function
```
String Hello(String name) {
  return "Hello $name nice to meet you!";
}
// 1라인 함수라면 arrow syntax룰 사용하면 간단하게 함수를 사용할 수 있다,
// String Hello(String name) => "Hello $name nice to meet you!";

void main() {
  print(Hello("Lee")); // Hello Lee nice to meet you!
}
```
### Named Parameters
Positional parameters: 함수에 정의되어있는 파라미터 순서대로 들어감.
```
String Hello({String name, int age, String country}) {
  return "Hello $name, you are $age, and you com from $country";
}
void main() {
    print(Hello("Lee", 20, "korean"));
}
```
함수에 다양한 파라메터를 넣게 된다면 순서대로 넣어야 원하는 값이 들어간다 하지만 넣어야 할 값이 많아 질 경우 일일이 확인하는데 오래걸리고 비효율 적이다

```
// {}로 감싸고 대체할 값을 작성 해야 한다,
String Hello({String name = "홍길동", int age = 0, String country = "공백"}) {
  return "Hello $name, you are $age, and you com from $country";
}

void main() {
  print(Hello(
    name: "Lee",
    age: 20,
    country: "korean",
  ));
}
```
named parameter를 이용하면 된다. named parameter는 null safty가 적용 되기 때문에 함수에 값이 안들어올 경우 대체할 값을 미리 넣어야 한다
Hello()에 마우스를 대면 적어얄 파라메터들을 확인할 수 있다.

임의로 지정한 값이 아니라 사용자로부터 무조건값을 받아야 한다면 required를 명시해준면 된다
```
String Hello(
    {required String name, required int age, required String country}) {
  return "Hello $name, you are $age, and you com from $country";
}

void main() {
  // print(Hello("Lee", 20, "korean"));
  print(Hello(
    name: "Lee",
    age: 20,
    country: "korean",
  ));
}
```
### Optional Positional Parameters
Positional Parameters는 순서대로 입력을 하고 Named Pareameters는 이름의 지정해서 입력을한 두가지 모두 모든 argument에 사용하지만 한가지만 지정하고 싶을 때 사용을 한다.
```
// 원하는 값을 []를 사용하고 Null Safty를 하고 값이 안들어 왔을 떄 대체할 값을 넣어주면 된다.
String Hello(String name, int age, [String? country = "Korean"]) =>
    "Hello $name, you are $age, and you com from $country";

void main() {
  print(Hello(
    "Lee",
    20,
  ));
}
```
### QQ Operator
```
// ??를 사용 할수 도 있다 왼쪽이 null이 아닐떄 오른쪽이 null일떄
String capitalizeName(String? name) => name?.toUpperCase() ?? "ANON";
// 삼항 연산자로 단순화 시킬수 있지만 
// name != null ? name.toUpperCase() : "ANON";

// name의 값이 null이 들어간다면 
//{
//   if (name != null) {
//     return name.toUpperCase();
//   }
//   return "ANON";
// }

void main() {
  print(capitalizeName("lee"));
  print(capitalizeName(null));

  String? name = null;
  name ??= "Lee"; // name의 값이 null 이라면 값을 할당해준다
}
```
### Typedef
기존 변수앞에 있는 데이터 타입을 내가 정한 이름으로 바꿔 붙일 수 있다.
```
typedef ListOfInts = List<int>;

ListOfInts reverseListOfNumbers(List<int> list) {
  var reversd = list.reversed;
  return reversd.toList();
}

void main() {
  print(reverseListOfNumbers([1, 2, 3]));
}

// Map에 typedef사용하기
typedef UserInfo = Map<String, String>;
String Hello(UserInfo userInfo) => "Hi ${userInfo['name']}";

void main() {
  print(Hello({'name': "Lee"}));
}
```
## Class
### Dart Class
```
class Player {
  // 민약 class의 값을 바꾸지 못하게 하고 싶다면 final
  String name = "Lee";
  final int xp = 1500;
  void Hello() {
    // class 매소드에서는 this사용을 권장하지 않는다. 매소드안에 같은 이름을 사용할떄 어쩔수 없이 사용하는 게 아니라면
    // this.name;
    // var name = "123"; // 매소드내에 중복으로 있는경우에는 한시적 허용
    print("Hellp my name is $name");
  }
}

void main() {
  // player class를 선언하는 방법
  var player = Player();
  Player player1 = Player();
  print(player.name); // Lee
  player.name = "Kim";
  print(player.name); // Kim
  // player.age = 2000; // 에러 final상수 이기때문에
}

```
### Constructors
직접 값을 받아 class에 값을 넣고 싶다면 생성자(Constructors)함수를 사용해서 값을 받아 오면 된다.
```
class Player {
  // Null Safty로인해 late함수를 사용해서 나중에 값이 들어 온다는걸 표시해줘야한다.
  late String name;
  late int xp;
  Player(String name, int xp){
     // 생성자함수에 값을 한번 받은 뒤에 초기화 과정을 거치기 때문에 late를 사용해줘야 한다,
     this.name = name; // 변수 초기화
     this.xp = xp;
     }
  void Hello() {
    print("Hellp my name is $name");
  }
}

void main() {
  var player = Player("Lee", 1500);
  var player2 = Player("Kim", 2500);
  player.Hello(); // Lee
  player2.Hello(); // Kim
}

```
위 코드 처럼 할 수 있지만 name과 int가 중복 되고 있다
```
class Player {
  // 여기도 똑같이 값이 비어 있는데 late를 사용하지 않냐면 생성자에서 즉시 초기화를 시켜주기 떄문이다.
  final String name;
  final int xp;
  // this.name을 하면 초기화(할당)을 하기 때문에 바로 변수에 들어가게 된다 그래서 late를 사용안해줘도 된다.
  Player(this.name, this.xp); 
  void Hello() {
    print("Hellp my name is $name");
  }
}
```
###  Named Constructor Parameters
정확한 위치의 값을 순서대로 입력을 해야하는데 너무 많은 Parameters 받을 경우에 위치를 전부 기억하기 힘들다
```
class Player {
  String name;
  int xp;
  int age;
  String team;
  // Named Parameter 처럼 {}를 해주고 Null safty로 인해 required 작성해주면 된다.
  Player({
    required this.name,
    required this.xp,
    required this.age,
    required this.team,
  });
  // {// this.name = name;// this.xp = xp;}
  void Hello() {
    print("Hellp my name is $name");
  }
}

void main() {
  var player = Player(
    name: "Lee",
    xp: 1500,
    age: 20,
    team: "red",
  );
  player.Hello(); // Lee
}

```
### Named Constructor
```
class Player {
  final String name;
  int xp, age;
  String team;
  Player({
    required this.name,
    required this.xp,
    required this.age,
    required this.team,
  });
  // Named Constructor
  Player.bluePlayer({required String name, required int age})
      // : 넣음으로써 Dart에게 여기서 Player객체를 초기화 하겠다고 알려준다.
      : this.name = name, // Player클래스를 초기화 하는것
        this.age = age,
        this.team = "blue",
        this.xp = 0;
  //간소화된 방법
  // Player.bluePlayer({
  //   required this.name,
  //   required this.age,
  //   this.xp = 0,
  //   this.team = 'red',
  // });
  // positional Constructor
  Player.redPlayer(String name, int age)
      : this.name = name,
        this.age = age,
        this.team = "red",
        this.xp = 0;
  //간소화방법 ㅔㅐ
  //Player.redPlayer(this.name, this.age, [this.team = 'red', this.xp = 0]);

}

void main() {
  var playerBlue = Player.bluePlayer(
    name: "Lee",
    age: 20,
  );
  var playerRed = Player.redPlayer(
    "Lee",
    20,
  );
}

```
### fromJson
```
class Player {
  String? name;
  int? xp;
  String? team;
  //
  Player.fromJson(Map<String, dynamic> playerJson)
      : name = playerJson["name"],
        xp = playerJson["xp"],
        team = playerJson["team"];

  void Hello() {
    print("Hellp my name is $name");
  }
}

void main() {
  var apiData = [
    {
      "name": "Lee",
      "team": "red",
      "xp": 0,
    },
    {
      "name": "Kim",
      "team": "red",
      "xp": 0,
    },
    {
      "name": "Han",
      "team": "red",
      "xp": 0,
    },
  ];
  apiData.forEach((playerJson) {
    var player = Player.fromJson(playerJson);
    player.Hello();
  });
}
```
#### Cascade Notation
중복사용되는 변수를 줄일 수 가 있다
```
class Player {
  String? name;
  int? xp;
  String? team;
  Player({required this.name, required this.xp, required this.team});
  void Hello() {
    print("Hellp my name is $name");
  }
}

void main() {
    <!-- var kim = Player(name: "Kim", xp: 1200, team: "red");
    kim.name = 'Lee';
    kim.xp = 100000;
    kim.team = "blue"; -->
  var kim = Player(name: "Kim", xp: 1200, team: "red")
    ..name = 'Lee'
    ..xp = 100000
    ..team = "blue";
}
```
;을 지우고 ..으로 중복되는 변수명을 줄일 수 있다.
### enum
값을 넣을 때 오타로 인해 원하는 값을 잘못들어 갈 수 있다. 실수하지않게 도와 주는게 enum이다.
```
enum Team { red, Blue }

class Player {
  String? name;
  int? xp;
  Team team; // 원하는 enum은 타입으로 작성해주면 enum안에 있는 값만 들어 가게 된다.
  Player({required this.name, required this.xp, required this.team});
  void Hello() {
    print("Hellp my name is $name");
  }
}

void main() {
  var kim = Player(name: "Kim", xp: 1200, team: Team.Blue) // enum명.으로 원하는 값을 작성
    ..name = 'Lee'
    ..xp = 100000
    ..team = Team.red;
}

```
### Abstract(추상화) Classes
추상화 클래스로는 객체를 생성할 수 없다. 다른 클래스들이 직접구현 해야하는 매소드들을 모아 놓은 청사진 같은 거다.
```
abstract class Human { // 매소드들은 작동은 하지 않는다.ㅈ
  void walk();
}
class Player extends Human { // 상속을 해서 사용이 가능하다.

  void walk() { // 없다면 에러표시가 날꺼다
    print("im walking");
  }
}
void main() {}
```
### Inheritance(상속)
class Human {
  final String name;
  Human({required this.name});
  void sayHello() {
    print("Hi my name is $name");
  }
}

enum Team { Bule, Red }

class Player extends Human {
  final Team team;
  //supr클래스로 name의 값을 Human클래쓰에 전달해준다,
  Player({required this.team, required String name}) : super(name: name);
  @override
  void sayHello() {
    super.sayHello();
    print("and I play for ${team}");
  }
}

void main() {
  // name값을 Player클래스한테 전달해준다.
  var player = Player(team: Team.Red, name: "Kim");
  player.sayHello();
}
### Mixins
Mixins는 생성자가 없는 클래스를 의미한다. 코드를 여러 클래스에서 재사용을 할 수 있다.
```
mixin Strong {
  final double strengthLevel = 1500.99;
}
// mixin을 붙여 사용한다.
mixin QyickRubber {
  void runQick() {
    print("RUUUUUUN");
  }
}

enum Team { Bule, Red }

// with로 클래스에 mixin을 추가 할때 사용한다.
class Player with Strong, QyickRubber {
  final Team team;
  Player({required this.team});
}

void main() {
  var player = Player(team: Team.Bule);
  print(player.strengthLevel);
  player.runQick();
}

```
# 요약
## 변수
- 다트는 메인함수를 먼저찾고 실행한다. 메인함수의 이름을 바꿔 진행을 하면 에러가 발생한다.              다트에서 ;은 중요하다. 꼭 코드 작성 끝에 ;을 작성홰줘야 한다. 일부러;작성을 안할때가 있기 떄문에 필수로 작성해줘야 한다.

- var 변수면 = 값; 변수타입을 구체화 필요값없다 다트가 자동으로 일치 시켜준다.                   var name = "Lee"; name = 1; 에러가 발생 var를 사용하지 않고 명시적으로 작성해도된다,           String name = "Lee";

- 관습적으로 함수나 매소드 내부에 지역 변수를 선언할 때 var를 사용하고 class에서 변수나 프로퍼티를 선언 할떄 명식적으로 타입을 작성한다,.

- daynamic타입도 있다 var와 비슷하지만 재선언을 하게 되면 변수타입이 바꾸게 된다. var사용을 권장한다    dynamic을 사용할때가 있으니까 알아두자.

- null Safety는 개발자가 null값을 참조할 수 없도록 하는것이다. null값을 사용하게 되면 런타임에러가 발생한다. 에러를 방지하기위해 새로게 null Safety가 생겼다. null값은 유용하기때문에 명확하게 표현을 해야 사용이 가능하다 String name = "Lee"; String? name = null; 타입뒤게 ?붙여 null값이 들어갈수 있게 해준다,var?는 불가능하다

- final은 JS의 const와 같다고 보면된다. var나 데이터타입들은 나중에 값을 재선언을 할 수 있다. 한번된 변수값을 바뀌게 하기 싫다면 final을 사용함ㄴ 된다.final var name = "Lee"; final name = "Lee";두개다 가능하다.

- late는 var나 final앞에 붙여줄 수 있다. late final name; late는 초기 데이터없이 변수를 선언할 수 있게 해준다, 변수를 만드는게 값없이 작성이 가능하다. 나중에 API값등을 받아 넣어주기 위해 사용한다. 값을 넣지 않은 상태에서 name을 사용할려고 하면 다트에서 막아줄것이다. flutter data fetching할 때 유용하다.

- const키워드는 JS에의 const와 다르다. final은 컴파일타임 시점에 작동을 하며 const는 런타임때 결정이 된다. const는 컴파일 할떄 알고 있는 값에 사용해야 한다. 이미확정된값에는 const APi나 사용자한테 값을 받아와야 한다면 final을 사용해야 된다.
## 데이터 타입
- 데이터타입에는 String, int, double, bool, List, Map등이 있다.

- List var numbers = [1,2,3,4,5]; List<int> numbers = [1,2,3,4,5]; 자료형을 명시할떄는 클래스를 작성할 때 사용한다. 그리고 되도록이면 List var numbers = [1,2,3,4,5,];로 마무리를 해주면 좋다. collection if로 list를 만들 수 있다 
```
void main(){
  var newNumber = true
  var numbers = [1,2,3,4, if(newNumber) 5,]
  if(newNumber) numbers.add(5); // 같다
}
```
- 텍스트에 변수를 추가 할 수 있다 var hello = "Hello my nams is $name ${age +2}" 변수명앞에 $붙여 사용하먄 된다. 숫자변수에 사칙연산을 하고 싶아면 {}감싸주면 된다.

- collection for of도 있다.
```
void main(){
  var newNumber = [5,6];
  var numbers = [1,2,3,4, for(var number in newNumber ) "@ $number",];
  for (var number in newNumber) {numbers.add(number);} // 같다
}
```
- Map JS의 Object라고 보면 된다. var player = {"name" : "Lee", "xp" : 0,}; Map<String, Object> player = {"name" : "Lee", "xp" : 0,}; object는 어떤것이든 올수있다.                            var human = [ {"name": "Lee", "age": 20} ]; 하지만 map을 많이 사용하지않는게 좋다 API같은걸 추가 할때 class를 권장한다.

- var numbers= {1,2,3,4,}; Set<int> numbers = {1,2,3,4,}; set과 list의 차이점은 set은 유니크하다  set.add(4); ,list.add(4); 하게 되면 1 2 3 4, 1 2 3 4 4 의 결과가 나온다.

## Function

- void Hello(String name){print("Hello my name is $name");}Hello("Lee");
  - parameter: 함수나 메서드를 정의할 때, 외부로부터 값을 전달받기 위해 사용하는 변수 void Hello(파라미터){}

- 다트는 네임드파라미터를 지원한다. 더 많은 정보를 파라미터에 전달할때 유용하다 기존 포지셔널파라미터는 원하는 값이 해당위치에 장확하게 들어가야하기 떄문에 입력의 양이 많을수록 찾기 힘들다 그럴때 네임드파라미터를 사용한다.
```
// 포지셔널 파라미터
String player(String name, int age, String gender){
  return "my name is $name, and $age $gender !";
}
void main(){
  player("Lee",20,"Man"); 
}
```
```
// 네임드 파라미터
String player({required String name, required int age, String gender = "NoN"}) {
  return "my name is $name, and $age $gender !";
}
void main(){
  player(name:"Lee",age: 20,gender: "Man"); 
}
```
파라미터에{}를 감싸주고 required 추가해주면 사용이 가능하다 required를 추가 하는 이유는 호출 시 반드시 값을 제공하도록 강제한다. 또는 파라미터에 값이 안들어 올경우 임의값이 들어가도록 해주면 된다(강제하지는 않는다.).