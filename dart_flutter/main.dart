String player({required String name, required int age, String gender = "NoN"}) {
  return "my name is $name, and $age $gender !";
}

void main() {
  player(name: "", age: 20, gender: "Man");
}
