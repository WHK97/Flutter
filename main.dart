String capitalizeName(String? name) => name?.toUpperCase() ?? "ANON";
// name != null ? name.toUpperCase() : "ANON";
//{
//   if (name != null) {
//     return name.toUpperCase();
//   }
//   return "ANON";
// }

void main() {
  print(capitalizeName("lee"));
  print(capitalizeName(null));
  String? name = null;
  name ??= "Lee"; // name의 값이 null 이라면 값을 할당해준다
}
