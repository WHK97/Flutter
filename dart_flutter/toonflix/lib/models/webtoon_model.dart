// API로 받아온 모든 값을 class로 사용하기 편하게 바꿔주는 작업

class WebtoonModel {
  // API로 응답 받은 값을 propety로 작성
  //late final String title, thumb, id;
  final String title, thumb, id;

  WebtoonModel.fromJson(Map<String, dynamic> json)
      : title = json["title"],
        thumb = json['thumb'],
        id = json['id'];
  // WebtoonModel(Map<String, dynamic> json) {
  //   title = json["title"];
  //   thumb = json['thumb'];
  //   id = json['id'];
  // }
}
