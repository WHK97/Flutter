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

void main() {}
