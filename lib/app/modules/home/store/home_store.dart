import 'package:filmes_em_cartaz/app/Service/filme_service.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';

import '../model/api_model.dart';

part 'home_store.g.dart';

class HomeStore = HomeStoreBase with _$HomeStore;

abstract class HomeStoreBase with Store {
  final FilmeService _filmeService = Modular.get();

  @observable
  List<ApiModel> listTopRated = [];

  @action
  void setListTopRated(List<ApiModel> value) => listTopRated = value;

  @observable
  List<ApiModel> listUpComing = [];

  @action
  void setListUpComing(List<ApiModel> value) => listUpComing = value;

  @observable
  List<ApiModel> listPlayingNow = [];

  @action
  void setListPlayingNow(List<ApiModel> value) => listPlayingNow = value;

  HomeStoreBase() {
    autorun((p0) async {
      List<ApiModel> topRated = await _filmeService.fetchBestRated();
      setListTopRated(topRated);
      List<ApiModel> upComing = await _filmeService.fetchUpComing();
      setListUpComing(upComing);
      List<ApiModel> nowPlaying = await _filmeService.fetchPlayingNow();
      setListPlayingNow(nowPlaying);
    });
  }
}
