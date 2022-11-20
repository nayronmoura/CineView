import 'package:filmes_em_cartaz/app/Service/filme_service.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
part 'trailer_store.g.dart';

class TrailerStore = TrailerStoreBase with _$TrailerStore;

abstract class TrailerStoreBase with Store{

  final FilmeService filmeService = Modular.get();

  final int id;
  @observable
  String? key;

  @action
  void setKey(String? value) => key = value;

  TrailerStoreBase({required this.id}){
    autorun((p0) async{
      String key = await filmeService.fetchTrailer(id);
      setKey(key);
    });
  }
}