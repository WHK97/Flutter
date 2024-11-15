# Dart키워드 정리
- Constructor(생성자);

Dart에서 객체 지향 프로그래밍과 관련된 다양한 키워드가 있습니다. 클래스와 객체를 만들고, 데이터를 관리하고, 특정 동작을 수행하는 데 중요한 키워드들을 설명드릴게요.

1. class
정의: class는 객체의 구조를 정의하는 틀입니다. 클래스는 필드(변수)와 메서드(함수)로 구성됩니다.
특징:
클래스를 정의하면 그 클래스를 기반으로 여러 객체를 생성할 수 있습니다.
클래스를 통해 코드의 재사용성과 구조화를 할 수 있습니다.
예제:
dart
코드 복사
class Player {
  String name;
  int xp;
}
2. this
정의: this는 현재 객체의 인스턴스를 가리킵니다. 주로 생성자나 메서드에서 객체의 필드를 가리킬 때 사용됩니다.
특징:
매개변수와 필드 이름이 같을 때 구별하기 위해 사용됩니다.
예제:
dart
코드 복사
class Player {
  String name;
  Player(String name) {
    this.name = name; // this.name은 필드를, name은 매개변수를 가리킴
  }
}
3. final
정의: final은 값을 한 번만 설정할 수 있는 변수를 선언할 때 사용됩니다. 설정 후에는 값을 변경할 수 없습니다.
특징:
런타임에 결정된 값을 저장할 수 있습니다.
선언 시 반드시 초기화하지 않아도 됩니다.
예제:
dart
코드 복사
class Player {
  final String name;
  Player(this.name); // name은 초기화 후 변경 불가
}
4. const
정의: const는 컴파일 타임에 고정된 상수 값을 정의할 때 사용됩니다.
특징:
final과 달리, 컴파일 시점에 값이 정해져야 합니다.
변하지 않는 값을 선언할 때 사용합니다.
예제:
dart
코드 복사
const int maxLevel = 99; // 컴파일 시에 결정된 상수
5. static
정의: static 키워드는 클래스에 속하는 변수나 메서드를 정의할 때 사용됩니다. 객체가 아니라 클래스 자체에 속합니다.
특징:
static 변수나 메서드는 클래스의 모든 인스턴스가 공유합니다.
객체를 생성하지 않고도 클래스명으로 직접 접근할 수 있습니다.
예제:
dart
코드 복사
class Game {
  static int maxPlayers = 100;
}

void main() {
  print(Game.maxPlayers); // 객체 없이 접근 가능
}
6. super
정의: super는 부모 클래스의 멤버(필드나 메서드)에 접근할 때 사용합니다.
특징:
서브클래스에서 부모 클래스의 생성자나 메서드를 호출할 수 있습니다.
예제:
dart
코드 복사
class Animal {
  void sound() => print("Animal sound");
}

class Dog extends Animal {
  @override
  void sound() {
    super.sound(); // 부모 클래스의 sound 메서드 호출
    print("Bark!");
  }
}
7. abstract
정의: abstract는 추상 클래스를 정의할 때 사용합니다. 추상 클래스는 인스턴스를 생성할 수 없으며, 상속하여 구현해야 합니다.
특징:
추상 클래스는 주로 공통 인터페이스나 기본 동작을 정의하는 데 사용됩니다.
일부 메서드는 구현하지 않고, 서브클래스가 구현하도록 할 수 있습니다.
예제:
dart
코드 복사
abstract class Animal {
  void sound(); // 구현 없이 선언만
}

class Dog extends Animal {
  @override
  void sound() => print("Bark");
}
8. extends
정의: extends는 클래스를 상속할 때 사용됩니다. 서브클래스는 부모 클래스의 모든 필드와 메서드를 상속받습니다.
특징:
서브클래스는 부모 클래스의 기능을 확장하거나 재정의(override)할 수 있습니다.
예제:
dart
코드 복사
class Animal {}
class Dog extends Animal {}
9. implements
정의: implements는 특정 클래스나 인터페이스의 모든 메서드를 구현하겠다고 선언할 때 사용됩니다.
특징:
상속과 달리, 반드시 모든 메서드를 구현해야 합니다.
예제:
dart
코드 복사
class CanRun {
  void run();
}

class Person implements CanRun {
  @override
  void run() => print("Running");
}
10. mixin
정의: mixin은 여러 클래스에서 코드를 재사용할 수 있게 도와주는 기능입니다.
특징:
다중 상속을 지원하지 않는 Dart에서 mixin을 사용하면 여러 클래스에 공통된 메서드나 속성을 추가할 수 있습니다.
예제:
dart
코드 복사
mixin Swimmer {
  void swim() => print("Swimming");
}

class Person with Swimmer {} // Person 클래스는 swim() 메서드를 갖게 됨
11. with
정의: with는 클래스에 mixin을 추가할 때 사용됩니다.
특징:
클래스를 상속하는 대신 특정 메서드나 속성을 추가하기 위해 mixin을 가져옵니다.
예제:
dart
코드 복사
mixin Flyer {
  void fly() => print("Flying");
}

class Bird with Flyer {}
12. @override
정의: @override는 부모 클래스의 메서드를 재정의할 때 사용합니다.
특징:
재정의 시 @override를 붙여 명시적으로 표시합니다.
예제:
dart
코드 복사
class Animal {
  void sound() => print("Animal sound");
}

class Dog extends Animal {
  @override
  void sound() => print("Bark");
}
요약
- class: 객체의 틀을 정의
- this: 현재 객체의 인스턴스를 가리킴
- final: 한 번만 값을 할당할 수 있는 변수
- const: 컴파일 타임 상수
- static: 클래스 자체에 속하는 변수나 메서드
- super: 부모 클래스의 멤버를 참조
- abstract: 추상 클래스를 정의
- extends: 클래스 상속
- implements: 인터페이스 구현
- mixin: 코드를 여러 클래스에서 재사용
- with: 클래스에 mixin을 추가
- @override: 부모 클래스의 메서드를 재정의