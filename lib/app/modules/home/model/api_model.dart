class ApiModel {
  int id;
  bool age;
  String title;
  String descrition;
  String? pathimg;
  String? pathbanner;
  String data;
  double vote;
  bool trailer;

  ApiModel(
      {required this.title,
        required this.descrition,
        required this.pathimg,
        required this.pathbanner,
        required this.data,
        required this.vote,
        required this.id,
        required this.age,
        required this.trailer});

  factory ApiModel.fromJson(Map<String, dynamic> json) => ApiModel(
      id: json["id"],
      age: json["adult"],
      title: json["title"],
      descrition: json["overview"],
      pathimg: json["poster_path"],
      pathbanner: json["backdrop_path"],
      data: json["release_date"],
      vote: json["vote_average"] + 0.0,
      trailer: json["video"]);
}

