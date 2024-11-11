String Hello(String name, int age, [String? country = "Korean"]) =>
    "Hello $name, you are $age, and you com from $country";

void main() {
  print(Hello(
    "Lee",
    20,
  ));
}
