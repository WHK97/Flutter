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
