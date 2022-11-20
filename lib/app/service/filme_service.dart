import 'package:dio/dio.dart';
import 'package:filmes_em_cartaz/app/modules/details/models/detail_model.dart';
import 'package:filmes_em_cartaz/app/modules/home/model/api_model.dart';
import 'package:filmes_em_cartaz/app/modules/details/models/profile_model.dart';


class FilmeService {
  final String _token = "9f02e644592b26bb6c0294c752c82f2c";

  Future<List<ApiModel>> fetchPopular() async {
    var result = await Dio().get(
        "https://api.themoviedb.org/3/movie/popular?api_key=$_token&language=pt-BR");
    List<ApiModel> films = [];
    for (var item in result.data["results"]) {
      films.add(ApiModel.fromJson(item));
    }
    return films;
  }

  Future<List<ApiModel>> fetchBestRated() async {
    var result = await Dio().get(
        "https://api.themoviedb.org/3/movie/top_rated?api_key=$_token&language=pt-BR");
    List<ApiModel> todoarray = [];
    for (var item in result.data["results"]) {
      todoarray.add(ApiModel.fromJson(item));
    }
    return todoarray;
  }

  Future<List<ApiModel>> fetchUpComing() async {
    var result = await Dio().get(
        "https://api.themoviedb.org/3/movie/upcoming?api_key=$_token&language=pt-BR");
    List<ApiModel> todoarray = [];
    for (var item in result.data["results"]) {
      todoarray.add(ApiModel.fromJson(item));
    }
    return todoarray;
  }

  Future<List<ApiModel>> fetchPlayingNow() async {
    var result = await Dio().get(
        "https://api.themoviedb.org/3/movie/popular?api_key=$_token&language=pt-BR");
    List<ApiModel> todoarray = [];
    for (var item in result.data["results"]) {
      todoarray.add(ApiModel.fromJson(item));
    }
    return todoarray;
  }

  Future<DetailModel> fetchDetails(int id) async {
    var result = await Dio().get(
        "https://api.themoviedb.org/3/movie/$id?api_key=$_token&language=pt-BR");
    print(result.data["video"]);
    return DetailModel.fromJson(result.data);
  }

  Future<List<ProfileModel>> fetchcredit(int id) async {
    var result = await Dio().get(
        "https://api.themoviedb.org/3/movie/$id/credits?api_key=$_token&language=pt-BR");
    List<ProfileModel> profilearray = [];
    for (var item in result.data["cast"]) {
      if (item["known_for_department"] == "Acting" &&
          item["profile_path"] != null) {
        profilearray.add(ProfileModel.fromJson(item));
      }
    }
    return profilearray;
  }

  Future<List<ApiModel>> fetchrecomendation(int id) async {
    var result = await Dio().get(
        "https://api.themoviedb.org/3/movie/$id/recommendations?api_key=$_token&language=pt-BR");
    List<ApiModel> todoarray = [];
    for (var item in result.data["results"]) {
      todoarray.add(ApiModel.fromJson(item));
    }
    return todoarray;
  }

  Future<List<ApiModel>> fetchSearch(String query) async {
    query = query.replaceAll(" ", "+");
    var result = await Dio().get(
        "https://api.themoviedb.org/3/search/movie?api_key=$_token&language=pt-BR&query=$query");
    List<ApiModel> todoarray = [];
    for (var item in result.data["results"]) {
      todoarray.add(ApiModel.fromJson(item));
    }
    return todoarray;
  }

  Future<String> fetchTrailer(int id) async {
    var result = await Dio().get(
        "https://api.themoviedb.org/3/movie/$id/videos?api_key=$_token&language=pt-BR");
    return result.data["results"][0]["key"];
  }
}
