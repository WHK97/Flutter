typedef UserInfo = Map<String, String>;
String Hello(UserInfo userInfo) => "Hi ${userInfo['name']}";

void main() {
  print(Hello({'name': "Lee"}));
}
