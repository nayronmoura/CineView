import 'package:filmes_em_cartaz/app/Service/filme_service.dart';
import 'package:filmes_em_cartaz/app/modules/home/model/api_model.dart';
import 'package:mobx/mobx.dart';

part 'search_store.g.dart';

class SearchStore = SearchStoreBase with _$SearchStore;

abstract class SearchStoreBase with Store {
  FilmeService filmeService;

  @observable
  String search = '';

  @action
  void setSearch(String value) => search = value;

  @observable
  bool loading = false;

  @action
  setLoading(bool value) => loading = value;

  @observable
  List<ApiModel> searchList = [];

  @action
  void setSearchList(List<ApiModel> value) => searchList = value;

  SearchStoreBase({required this.filmeService}) {
    autorun((_) {
      if (search.isNotEmpty) {
        setLoading(true);
        filmeService.fetchSearch(search).then((value) {
          setLoading(false);
          setSearchList(value);
        });
      }
    });
  }
}
