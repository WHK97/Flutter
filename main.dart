String Hello(
    {required String name, required int age, required String country}) {
  return "Hello $name, you are $age, and you com from $country";
}

void main() {
  // print(Hello("Lee", 20, "korean"));
  print(Hello(
    name: "Lee",
    country: "korean",
    age: 20,
  ));
}
