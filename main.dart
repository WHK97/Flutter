void main() {
  String? name = null;
  print(name?.isNotEmpty); // null
  name = "Lee";
  print(name?.isNotEmpty); // true
  print(name?.isEmpty); // false
}
