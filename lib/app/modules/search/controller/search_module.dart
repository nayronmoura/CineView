import 'package:filmes_em_cartaz/app/modules/search/store/search_store.dart';
import 'package:filmes_em_cartaz/app/modules/search/view/search_view.dart';
import 'package:flutter_modular/flutter_modular.dart';

class SearchModule extends Module{

  @override
  final List<Bind> binds = [
  Bind.lazySingleton((i) => SearchStore(filmeService: Modular.get()))
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(Modular.initialRoute,
        child: (_, args) => const SearchView()),
  ];
}