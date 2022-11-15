import 'companie_model.dart';

class DetailModel {
  final String? posterPath;
  final String overview;
  final String releaseDate;
  final List<CompanieModel> companies;
  final String title;
  final String? backdropPath;
  final double voteAverage;
  final double popularity;
  final String originalTitle;
  final bool video;

  DetailModel({
    required this.companies,
    this.posterPath,
    required this.overview,
    required this.releaseDate,
    required this.title,
    this.backdropPath,
    required this.voteAverage,
    required this.popularity,
    required this.originalTitle,
    required this.video,
  });

  factory DetailModel.fromJson(Map<String, dynamic> json) => DetailModel(
        posterPath: json["poster_path"],
        overview: json["overview"],
        releaseDate: json["release_date"],
        title: json["title"],
        backdropPath: json["backdrop_path"],
        voteAverage: json["vote_average"] + 0.0,
        popularity: json["popularity"] + 0.0,
        originalTitle: json["original_title"],
        video: json["video"],
        companies: List<CompanieModel>.from(
            json["production_companies"].map((x) => CompanieModel.fromJson(x))),
      );
}
