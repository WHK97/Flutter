String Hello(String name, [int? age = 0]) {
  return "Hi my name is $name ,and $age";
}

void main() {
  print(Hello(
    "",
  ));
}
