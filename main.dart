enum Team { red, Blue }

class Player {
  String? name;
  int? xp;
  Team team;
  Player({required this.name, required this.xp, required this.team});
  void Hello() {
    print("Hellp my name is $name");
  }
}

void main() {
  var kim = Player(name: "Kim", xp: 1200, team: Team.Blue)
    ..name = 'Lee'
    ..xp = 100000
    ..team = Team.red;
}
