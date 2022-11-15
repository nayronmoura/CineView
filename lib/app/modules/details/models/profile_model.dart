class ProfileModel {
  int id;
  String name;
  String character;
  String profilepath;
  String departament;

  ProfileModel(
      {required this.id,
        required this.name,
        required this.character,
        required this.profilepath,
        required this.departament});

  factory ProfileModel.fromJson(Map<String, dynamic> json) => ProfileModel(
      id: json["id"],
      name: json["original_name"],
      character: json["character"],
      profilepath: json["profile_path"],
      departament: json["known_for_department"] ?? "");
}