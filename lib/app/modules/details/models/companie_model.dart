class CompanieModel{
  final int id;
  final String logoPath;
  final String name;
  final String originCountry;

  CompanieModel({
    required this.id,
    required this.logoPath,
    required this.name,
    required this.originCountry,
  });

  factory CompanieModel.fromJson(Map<String, dynamic> json) => CompanieModel(
    id: json["id"],
    logoPath: json["logo_path"]??'',
    name: json["name"],
    originCountry: json["origin_country"],
  );
}