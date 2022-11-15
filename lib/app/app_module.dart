import 'package:filmes_em_cartaz/app/Service/filme_service.dart';
import 'package:filmes_em_cartaz/app/modules/details/controller/detail_module.dart';
import 'package:filmes_em_cartaz/app/modules/home/controller/home_module.dart';
import 'package:filmes_em_cartaz/app/modules/search/controller/search_module.dart';
import 'package:flutter_modular/flutter_modular.dart';



class AppModule extends Module {

  @override
  final List<Bind> binds = [
    Bind.singleton((i) => FilmeService())
  ];

  @override
  final List<ModularRoute> routes = [
    ModuleRoute(Modular.initialRoute, module: HomeModule()),
    ModuleRoute('/details', module: DetailModule()),
    ModuleRoute('/search', module: SearchModule())
  ];

}