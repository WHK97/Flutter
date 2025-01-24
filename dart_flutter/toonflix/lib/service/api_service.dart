import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:toonflix/models/webtoon_detail_model.dart';
import 'package:toonflix/models/webtoon_model.dart';
// API를 받은 값을 우리가 class로 사용이 가능하도록 바꿔야 한다. webtoon_model.dart에서

class ApiService {
  static const String baseUrl =
      "https://webtoon-crawler.nomadcoders.workers.dev";
  static const String today = "today";
  // async(비동기메서드)
  // Future는 await async를 사용하는 곳에 쓰인다.
  static Future<List<WebtoonModel>> getTodaysToons() async {
    List<WebtoonModel> webtoonInstancs = [];
    // url주소 Uri.parse은 문자열을 URI 객체로 변환하여 URI를 다루기 쉽게 만든다.
    final url = Uri.parse("$baseUrl/$today");
    // get요청 get함수 사용 이름을 구체하기위해 http패키지 사용 (http.age())
    // get타입은 Future이고 Future는 비동기(async)작업, 미래의 값을 나타낼때 사용 한다.
    // API요청이 처리돼서 응답을 반활할 때까지 기다린다.
    // await는 async메서드(함수)안에서만 사용이 가능하다.요청반환이 필요한곳에 사용
    // response타입인 이유는 future가 기다렸다가 완료될때 response를 주기 때문이다.

    final response = await http.get(url);

    // response이 정상응답했을때의 결과
    if (response.statusCode == 200) {
      // jsonDecde로 String 타입을 json으로 바꿔준다
      final List<dynamic> webtoons = jsonDecode(response.body);
      for (var webtoon in webtoons) {
        final instance = WebtoonModel.fromJson(webtoon);
        //final toon = WebtoonModel(webtoon);
        webtoonInstancs.add(instance);

        //print(instance.title);
      }

      return webtoonInstancs;
    }
    throw Error();
  }

  static Future<WebtoonDetailModel> getToonById(String id) async {
    final url = Uri.parse("$baseUrl/$id");
    final respnse = await http.get(url);
    if (respnse.statusCode == 200) {
      final webtoon = jsonDecode(respnse.body);
      WebtoonDetailModel.fromJson(webtoon);
      return WebtoonDetailModel.fromJson(webtoon);
    }
    throw Error();
  }
}
