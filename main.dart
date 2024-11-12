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
