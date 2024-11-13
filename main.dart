class Player {
  String name;
  int xp;
  int age;
  String team;
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
