import 'package:filmes_em_cartaz/app/Service/filme_service.dart';
import 'package:filmes_em_cartaz/app/modules/details/models/detail_model.dart';
import 'package:filmes_em_cartaz/app/modules/details/models/profile_model.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';

part 'detail_store.g.dart';

class DetailStore = DetailStoreBase with _$DetailStore;

abstract class DetailStoreBase with Store {
  final FilmeService _filmeService = Modular.get();

  @observable
  int? id;

  @action
  setId(int? value) => id = value;

  @observable
  DetailModel? detailModel;

  @action
  Future<void> setDetail(DetailModel detail) async {
    detailModel = detail;
  }

  @observable
  List<ProfileModel>? profilearray;

  @action
  Future<void> setProfile(List<ProfileModel> profile) async {
    profilearray = profile;
  }

  DetailStoreBase(){
    autorun((p0) async{
      if(id != null){
       DetailModel detail = await _filmeService.fetchDetails(id!);
        setDetail(detail);
        List<ProfileModel> profile = await _filmeService.fetchcredit(id!);
        setProfile(profile);
      }
    });
  }
}
