mixin Strong {
  final double strengthLevel = 1500.99;
}

mixin QyickRubber {
  void runQick() {
    print("RUUUUUUN");
  }
}

enum Team { Bule, Red }

class Player with Strong, QyickRubber {
  final Team team;
  Player({required this.team});
}

void main() {
  var player = Player(team: Team.Bule);
  print(player.strengthLevel);
  player.runQick();
}
