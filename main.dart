void main() {
  Set<int> numbers = {
    1,
    2,
    3,
  };
  numbers.add(1);
  print(numbers); //{1, 2, 3}
  List<int> number2 = [
    1,
    2,
    3,
  ];
  number2.add(1);
  print(number2); //[1, 2, 3, 1]
}
