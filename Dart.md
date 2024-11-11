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